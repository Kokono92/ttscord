import 'package:dart_mappable/dart_mappable.dart';
import 'package:ttscord/common/domain/datamodel/user.dart';
import 'package:ttscord/playback/domain/datamodel/scenario.dart';

part 'profile.mapper.dart';

@MappableClass()
class Profile with ProfileMappable {
  final String? displayName;
  final List<User> friends;
  final List<Scenario> scenarios;

  const Profile({
    this.displayName,
    required this.friends,
    required this.scenarios,
  });
}
