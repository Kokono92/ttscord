import 'package:dart_mappable/dart_mappable.dart';
import 'package:ttscord/core/domain/datamodel/branch_conditions.dart';
import 'package:ttscord/core/domain/datamodel/references.dart';

part 'actions.mapper.dart';

abstract interface class ActionContainer {
  Set<ScenarioAction> get containingActions;
}

@MappableClass()
sealed class ScenarioAction with ScenarioActionMappable {
  const ScenarioAction();
}

@MappableClass(discriminatorValue: "playAudio")
class PlayAudio extends ScenarioAction with PlayAudioMappable {
  final String path;

  const PlayAudio(this.path);
}

@MappableClass(discriminatorValue: "ringUp")
class RingUp extends ScenarioAction with RingUpMappable implements Referrer {
  final CharacterReference character;

  const RingUp(this.character);

  @override
  Set<Reference> get references => {character};
}

@MappableClass(discriminatorValue: "hangUp")
class HangUp extends ScenarioAction with HangUpMappable {}

@MappableClass(discriminatorValue: "waitFor")
class WaitFor extends ScenarioAction with WaitForMappable {
  final Duration duration;
  final double jitterPercent;

  const WaitFor(this.duration, {this.jitterPercent = 10.0});
}

@MappableClass(discriminatorValue: "waitUntil")
class WaitUntil extends ScenarioAction with WaitUntilMappable {
  final DateTime datetime;

  const WaitUntil(this.datetime);
}

@MappableClass(discriminatorValue: "subroutine")
class Subroutine extends ScenarioAction with SubroutineMappable {
  final String identifier;

  const Subroutine(this.identifier);
}

@MappableClass(discriminatorValue: "conditionalBranch")
class ConditionalBranch extends ScenarioAction
    with ConditionalBranchMappable
    implements ActionContainer {
  final List<BranchCondition> branches;
  final List<ScenarioAction> otherwise;

  const ConditionalBranch(this.branches, {this.otherwise = const []});

  @override
  Set<ScenarioAction> get containingActions {
    return branches.expand((elem) => elem.actions).toSet()..addAll(otherwise);
  }
}
