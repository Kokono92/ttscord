import 'dart:async';

import 'package:riverpod/riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sharedPreferencesProvider =
    AsyncNotifierProvider<SharedPreferencesNotifier, SharedPreferences>(
      SharedPreferencesNotifier.new,
    );

class SharedPreferencesNotifier extends AsyncNotifier<SharedPreferences> {
  @override
  FutureOr<SharedPreferences> build() => SharedPreferences.getInstance();

  Future<void>? clear() {
    final prefs = state.value;
    if (prefs != null) {
      prefs.clear();
      update((_) => prefs);
    }
  }
}
