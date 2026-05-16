import 'dart:async';

import 'package:riverpod/riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

typedef ScenarioSources = Set<Uri>;

final scenarioSourcesProvider =
    AsyncNotifierProvider<ScenarioSourcesNotifier, ScenarioSources>(
      ScenarioSourcesNotifier.new,
    );

class ScenarioSourcesNotifier extends AsyncNotifier<ScenarioSources> {
  @override
  Future<ScenarioSources> build() => _retrieveFromLocalStorage();

  Future<void> add(Uri newSource) async {
    await update((current) => {...current, newSource});
    _persistToLocalStorage();
  }

  Future<void> remove(Uri source) async {
    await update((current) => {...current..remove(source)});
    _persistToLocalStorage();
  }

  // TODO: infra/repoなのでは
  Future<ScenarioSources> _retrieveFromLocalStorage() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs
            .getStringList("scenarioSources")
            ?.map((elem) => Uri.parse(elem))
            .toSet() ??
        {};
  }

  Future<void> _persistToLocalStorage() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if (state.hasValue) {
      await prefs.setStringList(
        "scenarioSources",
        state.value!.map((elem) => elem.toString()).toList(),
      );
    }
  }
}
