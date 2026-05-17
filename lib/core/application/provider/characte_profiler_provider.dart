import 'package:riverpod/riverpod.dart';
import 'package:ttscord/core/application/dataclasses/data_or_error.dart';
import 'package:ttscord/core/domain/datamodel/character_profile.dart';
import 'package:ttscord/core/infrastructure/repository/character_profile_http_repository.dart';

typedef HttpSource = ({Uri origin, String identifier});

typedef CharacterProfileOrError = DataOrError<CharacterProfile>;

final characterProfileProvider =
    FutureProvider.family<CharacterProfileOrError, HttpSource>((
      ref,
      src,
    ) async {
      try {
        final profile = await CharacterProfileHttpRepository(
          src.origin,
        ).fetch(src.identifier);
        return Data<CharacterProfile>(profile);
      } catch (e) {
        return Error<CharacterProfile>(e);
      }
    });
