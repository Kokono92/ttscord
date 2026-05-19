import 'package:http/http.dart' as http;
import 'package:ttscord/core/domain/repositories/reposiroty.dart';

class HttpJsonRepository<T> implements Repository<T> {
  final Uri origin;
  final String parentDir;
  final T Function(String) jsonDecoder;
  static const timeout = Duration(seconds: 5);

  const HttpJsonRepository(this.origin, this.parentDir, this.jsonDecoder);

  @override
  Future<T> fetch(String identifier) async {
    final uri = origin.replace(pathSegments: [parentDir, "$identifier.json"]);

    final json = await http.read(uri).timeout(timeout);
    return jsonDecoder(json);
  }
}
