/*
import 'package:ttscord/core/domain/datamodel/data_origin.dart';
import 'package:ttscord/core/domain/repositories/reposiroty.dart';

import 'package:http/http.dart' as http;

class HttpRepository<T> implements Repository<T> {
  final ContentOrigin origin;
  final String parentDir;
  static const timeout = Duration(seconds: 5);

  const HttpRepository(this.origin, this.parentDir)

  @override
  Future<T> fetch(String identifier) async {
    final uri = origin.replace(pathSegments: [parentDir, "$identifier.json"]);

    final json = await http.read(uri).timeout(HttpRepository.timeout);
    return jsonDecoder(json);
  }

}
*/
