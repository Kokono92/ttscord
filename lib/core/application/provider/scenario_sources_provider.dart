import 'dart:async';

import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ttscord/core/application/dataclasses/with_origin.dart';
import 'package:ttscord/core/application/provider/shared_preferences_provider.dart';

typedef ScenarioIdentifier = String;
typedef ScenarioSources = Set<WithOrigin<ScenarioIdentifier>>;

final scenarioSourcesProvider =
    AsyncNotifierProvider<ScenarioSourcesNotifier, ScenarioSources>(
      ScenarioSourcesNotifier.new,
    );

class ScenarioSourcesNotifier extends AsyncNotifier<ScenarioSources> {
  @override
  Future<ScenarioSources> build() =>
      _retrieveFromLocalStorage(ref.watch(sharedPreferencesProvider).value);

  Future<void> add(WithOrigin<ScenarioIdentifier> newSource) async {
    await update((current) => {...current, newSource});
    _persistToLocalStorage(ref.read(sharedPreferencesProvider).value);
  }

  Future<void> remove(WithOrigin<ScenarioIdentifier> source) async {
    ref;
    await update((current) => {...current..remove(source)});
    _persistToLocalStorage(ref.read(sharedPreferencesProvider).value);
  }

  // TODO: infra/repoなのでは
  Future<ScenarioSources> _retrieveFromLocalStorage(
    SharedPreferences? prefs,
  ) async {
    if (prefs == null) return {};
    return prefs
            .getStringList("scenarioSources")
            ?.map((elem) => WithOriginMapper.fromJson<ScenarioIdentifier>(elem))
            .toSet() ??
        {};
  }

  Future<void> _persistToLocalStorage(SharedPreferences? prefs) async {
    if (prefs == null) return;
    if (state.value != null) {
      await prefs.setStringList(
        "scenarioSources",
        state.value!.map((elem) => elem.toJson()).toList(),
      );
    }
  }
}
