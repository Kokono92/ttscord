import 'package:ttscord/core/infrastructure/repository/http_repository.dart';
import 'package:ttscord/playback/domain/datamodel/scenario.dart';

class ScenarioHttpRepository extends HttpRepository<Scenario> {
  const ScenarioHttpRepository(Uri origin)
    : super(origin, "scenarios", ScenarioMapper.fromJson);
}
