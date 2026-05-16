import 'package:dart_mappable/dart_mappable.dart';
import 'package:ttscord/core/domain/datamodel/character_profile.dart';

part 'channel.mapper.dart';

enum ChannelType { text, voice }

@MappableClass()
class Channel with ChannelMappable {
  final String name;
  final ChannelType type;
  final int? categoryId;
  final List<CharacterProfile> joiningUsers;

  const Channel({
    required this.name,
    required this.type,
    this.categoryId,
    this.joiningUsers = const [],
  });
}
