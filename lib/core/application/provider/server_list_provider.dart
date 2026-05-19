import 'package:riverpod/riverpod.dart';
import 'package:ttscord/core/application/dataclasses/with_origin.dart';
import 'package:ttscord/core/application/provider/characte_profiler_provider.dart';
import 'package:ttscord/core/application/provider/scenario_provider.dart';
import 'package:ttscord/core/application/provider/scenario_sources_provider.dart';
import 'package:ttscord/core/domain/datamodel/references.dart';
import 'package:ttscord/core/domain/datamodel/scenario.dart';
import 'package:ttscord/server/domain/datamodel/server.dart';


/*
final serverListProvider = Provider<List<WithOrigin<DatsaOrError<Server>>>>((
  ref,
) {
  return ref
      .watch(scenarioSourcesProvider)
      .value
      ?.map((e) => ref.read(scenarioProvider(e)).value)
      .nonNulls
      .expand(
        (e) => e.content.references.whereType<ChannelReference>().map(
          (r) => WithOrigin(origin: e.origin, content: r),
        ),
      );
});

class DatsaOrError {}

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
*/