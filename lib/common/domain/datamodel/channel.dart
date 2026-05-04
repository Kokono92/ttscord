import 'package:dart_mappable/dart_mappable.dart';
import 'package:ttscord/common/domain/datamodel/user.dart';

part 'channel.mapper.dart';

enum ChannelType { text, voice }

@MappableClass()
class Channel with ChannelMappable {
  final String name;
  final ChannelType type;
  final int? categoryId;
  final List<User> joiningUsers;

  const Channel({
    required this.name,
    required this.type,
    this.categoryId,
    this.joiningUsers = const [],
  });
}
