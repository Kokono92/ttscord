import 'package:dart_mappable/dart_mappable.dart';
import 'package:ttscord/core/domain/datamodel/image_source.dart';

part 'character_profile.mapper.dart';

@MappableEnum()
enum OnlineStatus { hidde, online, offline }

@MappableClass()
class CharacterProfile with CharacterProfileMappable {
  final String name;
  final ImageSource iconSource;
  final bool isMicMuted;
  final bool isSpeakerMuted;
  final OnlineStatus status;

  const CharacterProfile({
    required this.name,
    required this.iconSource,
    this.isMicMuted = false,
    this.isSpeakerMuted = false,
    this.status = OnlineStatus.offline,
  });
}
