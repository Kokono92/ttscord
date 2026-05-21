import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ttscord/core/presentation/datamodel/conversation_target.dart';
import 'package:ttscord/voice_call/application/datamodel/call_session.dart';

final activeCallSessionProvider =
    NotifierProvider<ActiveCallSessionNotifier, CallSession?>(
      ActiveCallSessionNotifier.new,
    );

class ActiveCallSessionNotifier extends Notifier<CallSession?> {
  @override
  CallSession? build() => null;

  void initiateCallSession(ConversationTarget target) =>
      state = CallSession(target: target);

  void endCallSession() => state = null;
}
