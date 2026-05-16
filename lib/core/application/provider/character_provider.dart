import 'package:riverpod/riverpod.dart';
import 'package:ttscord/core/domain/datamodel/character_profile.dart';
import 'package:ttscord/core/infrastructure/repository/character_profile_http_repository.dart';

typedef HttpSource = ({Uri origin, String identifier});

final characterProvider = FutureProvider.family<CharacterProfile, HttpSource>(
  (ref, src) async =>
      await CharacterProfileHttpRepository(src.origin).fetch(src.identifier),
);
