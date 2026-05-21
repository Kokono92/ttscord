import 'package:dart_mappable/dart_mappable.dart';
import 'package:ttscord/core/presentation/datamodel/conversation_target.dart';

part 'call_session.mapper.dart';

@MappableClass()
class CallSession with CallSessionMappable {
  final ConversationTarget target;

  const CallSession({required this.target});
}
