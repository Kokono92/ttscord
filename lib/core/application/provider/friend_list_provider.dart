import 'package:riverpod/riverpod.dart';
import 'package:ttscord/core/application/provider/characte_profiler_provider.dart';
import 'package:ttscord/core/application/provider/scenario_provider.dart';
import 'package:ttscord/core/application/provider/scenario_sources_provider.dart';
import 'package:ttscord/core/domain/datamodel/references.dart';
import 'package:ttscord/core/domain/datamodel/scenario.dart';
import 'package:ttscord/core/domain/datamodel/with_origin.dart';

final friendListProvider = Provider<List<CharacterProfileOrError>>((ref) {
  final scenarioSources = ref.watch(scenarioSourcesProvider).value ?? {};

  return extractReferences<CharacterReference>(scenarioSources, (uri) {
        final origin = Uri.parse(uri.origin);
        final identifier = (uri.pathSegments.last.split(".")
          ..removeLast()).join(".");
        return ref
            .watch(scenarioProvider((origin: origin, identifier: identifier)))
            .value;
      })
      .map((elem) {
        final (origin, r) = elem;
        return ref
            .watch(
              characterProfileProvider((
                identifier: r.identifier,
                origin: origin,
              )),
            )
            .value;
      })
      .nonNulls
      .toList();
});

void debudPrint(String string) {}

Iterable<(Uri, ReferenceT)> extractReferences<ReferenceT extends Reference>(
  Iterable<Uri> scenarioSources,
  WithOrigin<Scenario>? Function(Uri) retrieveScenario,
) {
  final scenarios =
      scenarioSources.map((uri) {
        final origin = Uri.parse(uri.origin);
        final scenario = retrieveScenario(uri);
        return scenario != null ? (origin, scenario) : null;
      }).nonNulls;
  return scenarios.expand((elem) {
    final (origin, scenario) = elem;
    return scenario.references.whereType<ReferenceT>().map((r) => (origin, r));
  });
}
