import 'package:riverpod/riverpod.dart';
import 'package:ttscord/core/application/dataclasses/with_origin.dart';
import 'package:ttscord/core/application/provider/characte_profiler_provider.dart';
import 'package:ttscord/core/application/provider/scenario_provider.dart';
import 'package:ttscord/core/application/provider/scenario_sources_provider.dart';
import 'package:ttscord/core/domain/datamodel/references.dart';
import 'package:ttscord/core/domain/datamodel/scenario.dart';

final friendListProvider = Provider<List<WithOrigin<CharacterProfileOrError>>>((
  ref,
) {
  final scenarioSources = ref.watch(scenarioSourcesProvider).value ?? {};

  return extractReferences<CharacterReference>(
        scenarioSources,
        (elem) => ref.watch(scenarioProvider(elem)).value,
      )
      .map((elem) {
        return ref
            .watch(
              characterProfileProvider(
                elem.propagate((content) => content.identifier),
              ),
            )
            .value;
      })
      .nonNulls
      .toList();
});

Iterable<WithOrigin<ReferenceT>>
extractReferences<ReferenceT extends Reference>(
  Iterable<WithOrigin<ScenarioIdentifier>> scenarioSources,
  WithOrigin<Scenario>? Function(WithOrigin<ScenarioIdentifier>)
  retrieveScenario,
) {
  final scenarios = scenarioSources.map(retrieveScenario).nonNulls;
  return scenarios.expand((elem) {
    return elem.content.references.whereType<ReferenceT>().map(
      (r) => WithOrigin<ReferenceT>(origin: elem.origin, content: r),
    );
  });
}
