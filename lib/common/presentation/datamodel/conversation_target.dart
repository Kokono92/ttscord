import 'package:dart_mappable/dart_mappable.dart';
import 'package:ttscord/common/domain/datamodel/channel.dart';
import 'package:ttscord/common/domain/datamodel/user.dart';

part 'conversation_target.mapper.dart';

@MappableClass()
sealed class ConversationTarget with ConversationTargetMappable {
  String get title;
  List<User> get participants;

  const ConversationTarget();
}

@MappableClass()
final class ChannelConversationTarget extends ConversationTarget
    with ChannelConversationTargetMappable {
  final Channel channel;

  const ChannelConversationTarget(this.channel);

  @override
  String get title => channel.name;

  @override
  List<User> get participants => channel.joiningUsers;
}

@MappableClass()
final class UserConversationTarget extends ConversationTarget
    with UserConversationTargetMappable {
  final User user;

  const UserConversationTarget(this.user);

  @override
  String get title => user.name;

  @override
  List<User> get participants => [user];
}
