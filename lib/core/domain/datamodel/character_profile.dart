import 'dart:ui';

import 'package:dart_mappable/dart_mappable.dart';
import 'package:ttscord/core/domain/datamodel/image_source.dart';

part 'character_profile.mapper.dart';

@MappableEnum()
enum OnlineStatus { hidde, online, offline }

@MappableClass(includeCustomMappers: [ColorMapper()])
class CharacterProfile with CharacterProfileMappable {
  final String name;
  final ImageSource iconSource;
  final Color? bannarColor;
  final bool isMicMuted;
  final bool isSpeakerMuted;
  final OnlineStatus status;

  const CharacterProfile({
    required this.name,
    required this.iconSource,
    this.bannarColor,
    this.isMicMuted = false,
    this.isSpeakerMuted = false,
    this.status = OnlineStatus.offline,
  });
}

class ColorMapper extends SimpleMapper<Color> {
  const ColorMapper();

  @override
  Color decode(dynamic value) {
    return Color(int.parse(value, radix: 16));
  }

  @override
  dynamic encode(Color self) {
    return self.toARGB32().toRadixString(16).toUpperCase();
  }
}
