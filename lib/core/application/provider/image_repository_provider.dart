import 'package:riverpod/riverpod.dart';
import 'package:ttscord/core/domain/repositories/image_repository.dart';
import 'package:ttscord/core/infrastructure/repository/image_http_repository.dart';

final imageRepositoryProvider = Provider<ImageRepository>(
  (ref) => const HttpImageRepository(),
);
