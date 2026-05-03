import 'package:dart_mappable/dart_mappable.dart';
import 'package:ttscord/uncategorized/domain/datamodel/user.dart';

part 'server.mapper.dart';

@MappableClass()
class Server with ServerMappable {
  final String name;
  final int id;
  final String? iconPath;
  final List<ChannelCategory> categories;
  final List<Channel> channels;

  const Server({
    required this.name,
    required this.id,
    this.iconPath,
    required this.categories,
    required this.channels,
  });
}

@MappableClass()
class ChannelCategory with ChannelCategoryMappable {
  final String name;
  final int id;

  const ChannelCategory({required this.name, required this.id});
}

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
