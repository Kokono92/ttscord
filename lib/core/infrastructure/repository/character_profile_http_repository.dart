import 'package:ttscord/core/infrastructure/repository/http_json_repository.dart';
import 'package:ttscord/core/domain/datamodel/character_profile.dart';

class CharacterProfileHttpRepository
    extends HttpJsonRepository<CharacterProfile> {
  const CharacterProfileHttpRepository(Uri origin)
    : super(origin, "characters", CharacterProfileMapper.fromJson);
}
