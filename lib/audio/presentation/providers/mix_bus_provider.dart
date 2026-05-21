import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_soloud/flutter_soloud.dart';
import 'package:ttscord/audio/presentation/providers/soloud_provider.dart';

final mixBusProvider = FutureProvider.family.autoDispose<Bus, String>((
  ref,
  name,
) async {
  final soLoud = await ref.watch(soLoudProvider.future);
  final bus = soLoud.createMixingBus(name: name);
  bus.playOnEngine();
  return bus;
});
