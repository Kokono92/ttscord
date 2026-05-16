import 'package:dart_mappable/dart_mappable.dart';

part 'character_profile.mapper.dart';

@MappableClass()
class CharacterProfile with CharacterProfileMappable {
  final String name;
  final String? iconPath;
  final bool isMicMuted;
  final bool isSpeakerMuted;

  const CharacterProfile({
    required this.name,
    this.iconPath,
    this.isMicMuted = false,
    this.isSpeakerMuted = false,
  });
}
