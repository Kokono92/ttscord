import 'package:ttscord/core/domain/datamodel/image_source.dart';

abstract interface class ImageRepository {
  Uri resolveUri(
    ImageSource source, {
    required Uri origin,
    required String parentDir,
  });
}
