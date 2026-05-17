import 'package:dart_mappable/dart_mappable.dart';
import 'package:ttscord/core/domain/datamodel/actions.dart';
import 'package:ttscord/core/domain/datamodel/references.dart';
import 'package:ttscord/core/domain/datamodel/triggers.dart';

part 'scenario.mapper.dart';

@MappableClass()
class Scenario with ScenarioMappable implements Referrer, ActionContainer {
  final String title;
  final String author;
  final String description;

  final List<Trigger> triggers;
  final List<ScenarioAction> flow;
  final Map<String, List<ScenarioAction>> subroutines;

  Scenario({
    required this.title,
    required this.author,
    required this.description,
    required this.triggers,
    required this.flow,
    this.subroutines = const {},
  });

  @override
  Set<Reference> get references =>
      {
        ...triggers.whereType<Referrer>(),
        ...containingActions.resolved().whereType<Referrer>(),
      }.expand((referrer) => referrer.references).toSet();

  void validateSubRoutines() {
    final referredSubRoutines =
        containingActions.resolved().whereType<Subroutine>();

    final errors =
        referredSubRoutines
            .where((elem) => !subroutines.keys.contains(elem.identifier))
            .toList();

    if (errors.isNotEmpty) {
      throw MissingSubroutinesException(errors);
    }
  }

  @override
  Set<ScenarioAction> get containingActions {
    return {...flow, ...subroutines.values.expand((elem) => elem)};
  }
}

class MissingSubroutinesException implements Exception {
  final List<Subroutine> missing;
  const MissingSubroutinesException(this.missing);

  @override
  String toString() =>
      'Missing sub-routine definitions: ${missing.map((e) => e.identifier).join(', ')}';
}

extension ResolveActionsExt on Iterable<ScenarioAction> {
  Iterable<ScenarioAction> resolved() => expand(
    (action) =>
        action is ActionContainer
            ? (action as ActionContainer).containingActions.resolved()
            : [action],
  );
}
