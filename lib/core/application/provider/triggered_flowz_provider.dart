import 'package:riverpod/riverpod.dart';
import 'package:ttscord/core/application/dataclasses/with_origin.dart';
import 'package:ttscord/core/application/provider/scenario_provider.dart';
import 'package:ttscord/core/application/provider/scenario_sources_provider.dart';
import 'package:ttscord/core/domain/datamodel/actions.dart';
import 'package:ttscord/core/domain/datamodel/triggers.dart';

final triggeredFlowProvider =
    Provider.family<WithOrigin<List<ScenarioAction>>?, Trigger>((ref, trigger) {
      try {
        return ref
            .watch(scenarioSourcesProvider)
            .value
            ?.map((e) => ref.watch(scenarioProvider(e)).value)
            .nonNulls
            .firstWhere((e) => e.content.triggers.contains(trigger))
            .propagate((content) => content.flow);
      } on StateError catch (_) {
        return null;
      }
    });
