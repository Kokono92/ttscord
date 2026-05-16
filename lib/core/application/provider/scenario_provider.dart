import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ttscord/core/infrastructure/repository/scenario_http_repository.dart';
import 'package:ttscord/playback/domain/datamodel/scenario.dart';

final scenarioProvider = FutureProvider.family<Scenario, Uri>(
  (ref, uri) async => await ScenarioHttpRepository(
    Uri(scheme: uri.scheme, host: uri.host, port: uri.port),
  ).fetch(uri.path),
);
