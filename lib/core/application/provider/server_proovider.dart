import 'package:riverpod/riverpod.dart';
import 'package:ttscord/core/application/dataclasses/with_origin.dart';
import 'package:ttscord/core/domain/datamodel/data_origin.dart';

import 'package:ttscord/server/domain/datamodel/server.dart';
import 'package:ttscord/core/infrastructure/repository/server_http_repository.dart';

final serverProvider = FutureProvider.family<Server, WithOrigin<String>>(
  (ref, src) async => await ServerHttpRepository(src.origin).fetch(src.content),
);
