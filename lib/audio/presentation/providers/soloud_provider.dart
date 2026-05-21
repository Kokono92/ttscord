import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_soloud/flutter_soloud.dart';

final soLoudProvider = FutureProvider<SoLoud>((ref) async {
  final soLoud = SoLoud.instance;
  await SoLoud.instance.init();
  soLoud.setVisualizationEnabled(true);
  return SoLoud.instance;
});
