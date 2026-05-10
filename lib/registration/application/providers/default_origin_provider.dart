import 'package:riverpod/riverpod.dart';

final defaultOriginProvider = Provider<String?>(
  (ref) =>
      const bool.hasEnvironment('DEFAULT_ORIGIN')
          ? const String.fromEnvironment('DEFAULT_ORIGIN')
          : null,
);
