import 'package:riverpod/riverpod.dart';

import 'package:ttscord/server/domain/datamodel/server.dart';
import 'package:ttscord/core/infrastructure/repository/server_http_repository.dart';

typedef HttpSource = ({Uri origin, String identifier});

final serverProvider = FutureProvider.family<Server, HttpSource>(
  (ref, src) async =>
      await ServerHttpRepository(src.origin).fetch(src.identifier),
);
