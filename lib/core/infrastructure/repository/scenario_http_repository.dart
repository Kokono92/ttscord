import 'package:ttscord/core/infrastructure/repository/http_json_repository.dart';
import 'package:ttscord/core/domain/datamodel/scenario.dart';

class ScenarioHttpRepository extends HttpJsonRepository<Scenario> {
  const ScenarioHttpRepository(Uri origin)
    : super(origin, "scenarios", ScenarioMapper.fromJson);
}
