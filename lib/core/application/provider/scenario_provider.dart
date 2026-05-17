import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ttscord/core/application/dataclasses/with_origin.dart';
import 'package:ttscord/core/infrastructure/repository/scenario_http_repository.dart';
import 'package:ttscord/core/domain/datamodel/scenario.dart';

typedef HttpSource = ({Uri origin, String identifier});

final scenarioProvider =
    FutureProvider.family<WithOrigin<Scenario>, HttpSource>(
      (ref, src) async => WithOrigin(
        content: await ScenarioHttpRepository(src.origin).fetch(src.identifier),
        origin: src.origin,
      ),
    );
