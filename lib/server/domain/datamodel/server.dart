import 'package:dart_mappable/dart_mappable.dart';
import 'package:ttscord/core/domain/datamodel/channel.dart';
import 'package:ttscord/server/domain/datamodel/channel_category.dart';

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
