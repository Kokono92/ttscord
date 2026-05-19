import 'dart:async';
import 'dart:ui' show Image, decodeImageFromList;
import 'dart:typed_data';
import 'package:http/http.dart' as http;

import 'package:ttscord/core/domain/datamodel/data_origin.dart';
import 'package:ttscord/core/domain/datamodel/image_source.dart';
import 'package:ttscord/core/domain/repositories/image_repository.dart';
import 'package:ttscord/core/domain/repositories/reposiroty.dart';
import 'package:ttscord/core/infrastructure/repository/http_json_repository.dart';

class ImageHttpRepository {
  // implements Repository<Image> {
  final Uri origin;
  static const timeout = Duration(seconds: 5);

  const ImageHttpRepository(this.origin);

  //@override
  Future<Image> fetch(ImageSource src) async {
    final uri = origin.replace(
      pathSegments: ["images", "${src.identifier}.${src.format}"],
    );
    final bytes = await http.readBytes(uri).timeout(timeout);
    final completer = Completer<Image>();

    decodeImageFromList(bytes, (Image img) {
      completer.complete(img);
    });

    return completer.future;
  }

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
