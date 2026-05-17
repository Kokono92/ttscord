import 'package:dart_mappable/dart_mappable.dart';
import 'package:ttscord/core/domain/datamodel/actions.dart';

part 'branch_conditions.mapper.dart';

@MappableClass()
sealed class BranchCondition with BranchConditionMappable {
  final List<ScenarioAction> actions;

  const BranchCondition({required this.actions});
}

@MappableClass(
  includeCustomMappers: [TimeMapper()],
  discriminatorValue: "clockCondition",
)
class ClockCondition extends BranchCondition with ClockConditionMappable {
  final Time since;
  final Time until;

  const ClockCondition({
    required this.since,
    required this.until,
    required super.actions,
  });
}

extension type Time._(Duration d) implements Duration {
  Time({required int hours, int minutes = 0})
    : d = Duration(hours: hours, minutes: minutes);
}

class TimeMapper extends SimpleMapper<Time> {
  const TimeMapper();

  @override
  Time decode(dynamic value) {
    return Time(hours: 0, minutes: value);
  }

  @override
  dynamic encode(Time self) {
    return self.inMinutes;
  }
}
