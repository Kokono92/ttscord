import 'package:ttscord/core/domain/datamodel/image_source.dart';
import 'package:ttscord/core/domain/repositories/image_repository.dart';

class HttpImageRepository implements ImageRepository {
  const HttpImageRepository();

  @override
  Uri resolveUri(
    ImageSource source, {
    required Uri origin,
    required String parentDir,
  }) {
    return origin.replace(
      pathSegments: [parentDir, "${source.identifier}.${source.format}"],
    );
  }
}
