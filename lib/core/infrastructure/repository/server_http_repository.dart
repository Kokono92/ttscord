import 'package:ttscord/core/infrastructure/repository/http_repository.dart';
import 'package:ttscord/server/domain/datamodel/server.dart';

class ServerHttpRepository extends HttpRepository<Server> {
  const ServerHttpRepository(Uri origin)
    : super(origin, "characters", ServerMapper.fromJson);
}
