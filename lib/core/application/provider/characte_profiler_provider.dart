import 'package:riverpod/riverpod.dart';
import 'package:ttscord/core/application/dataclasses/data_or_error.dart';
import 'package:ttscord/core/application/dataclasses/with_origin.dart';
import 'package:ttscord/core/domain/datamodel/character_profile.dart';
import 'package:ttscord/core/infrastructure/repository/character_profile_http_repository.dart';

typedef CharacterProfileOrError = DataOrError<CharacterProfile>;

final characterProfileProvider = FutureProvider.family<
  WithOrigin<CharacterProfileOrError>,
  WithOrigin<String>
>((ref, src) async {
  try {
    final profile = await CharacterProfileHttpRepository(
      src.origin,
    ).fetch(src.content);
    return src.propagate((_) => Data<CharacterProfile>(profile));
  } catch (e) {
    return src.propagate((_) => Error<CharacterProfile>(e));
  }
});
