import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ttscord/core/application/dataclasses/with_origin.dart';
import 'package:ttscord/core/application/provider/scenario_provider.dart';
import 'package:ttscord/core/application/provider/scenario_sources_provider.dart';
import 'package:ttscord/core/domain/datamodel/actions.dart';
import 'package:ttscord/core/domain/datamodel/scenario.dart';
import 'package:ttscord/core/domain/datamodel/triggers.dart';

final triggeredFlowProvider =
    FutureProvider.family<List<ScenarioAction>?, Trigger>((ref, trigger) async {
      ref
          .watch(scenarioSourcesProvider)
          .value
          ?.map(
            (originatedSource) =>
                ref.watch(scenarioProvider(originatedSource)).value,
          )
          .nonNulls
          .cast<WithOrigin<Scenario>?>()
          .firstWhere(
            (originatedScenario) =>
                originatedScenario?.content.triggers.contains(trigger) ?? false,
            orElse: () => null,
          );
    });
