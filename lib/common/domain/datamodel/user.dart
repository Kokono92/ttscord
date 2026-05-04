import 'package:dart_mappable/dart_mappable.dart';

part 'user.mapper.dart';

@MappableClass()
class User with UserMappable {
  final String name;
  final String? iconPath;
  final bool isMicMuted;
  final bool isSpeakerMuted;

  const User({
    required this.name,
    this.iconPath,
    this.isMicMuted = false,
    this.isSpeakerMuted = false,
  });
}
