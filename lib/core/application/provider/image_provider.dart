import 'dart:ui';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ttscord/core/application/dataclasses/data_or_error.dart';
import 'package:ttscord/core/application/dataclasses/with_origin.dart';
import 'package:ttscord/core/domain/datamodel/image_source.dart';
import 'package:ttscord/core/infrastructure/repository/image_http_repository.dart';

final imageProvider =
    FutureProvider.family<DataOrError<Image>, WithOrigin<ImageSource>>((
      ref,
      src,
    ) async {
      try {
        final image = await ImageHttpRepository(src.origin).fetch(src.content);
        return Data<Image>(image);
      } catch (e) {
        return Error<Image>(e);
      }
    });
