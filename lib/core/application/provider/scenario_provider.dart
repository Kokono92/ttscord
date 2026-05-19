import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ttscord/core/application/dataclasses/with_origin.dart';
import 'package:ttscord/core/application/provider/scenario_sources_provider.dart';
import 'package:ttscord/core/infrastructure/repository/scenario_http_repository.dart';
import 'package:ttscord/core/domain/datamodel/scenario.dart';

final scenarioProvider =
    FutureProvider.family<WithOrigin<Scenario>, WithOrigin<ScenarioIdentifier>>(
      (ref, src) async => WithOrigin(
        content: await ScenarioHttpRepository(src.origin).fetch(src.content),
        origin: src.origin,
      ),
    );
