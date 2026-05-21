import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ttscord/core/domain/datamodel/actions.dart';
import 'package:ttscord/core/domain/datamodel/triggers.dart';

final ongoingFlowProvider =
    NotifierProvider<OngoingFlowNotifier, List<ScenarioAction>?>(
      OngoingFlowNotifier.new,
    );

class OngoingFlowNotifier extends Notifier<List<ScenarioAction>?> {
  @override
  List<ScenarioAction>? build() => null;

  void activateBy(Trigger trigger) {}
}
