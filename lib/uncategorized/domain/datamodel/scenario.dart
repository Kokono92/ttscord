import 'package:dart_mappable/dart_mappable.dart';

part 'scenario.mapper.dart';

@MappableClass()
class Scenario with ScenarioMappable {
  final int val;

  Scenario(this.val);
}
