import 'package:dart_mappable/dart_mappable.dart';
import 'package:ttscord/core/domain/datamodel/character_profile.dart';
import 'package:ttscord/playback/domain/datamodel/scenario.dart';

part 'profile.mapper.dart';

@MappableClass()
class Profile with ProfileMappable {
  final String? displayName;
  final List<CharacterProfile> friends;
  final List<Scenario> scenarios;

  const Profile({
    this.displayName,
    required this.friends,
    required this.scenarios,
  });
}
