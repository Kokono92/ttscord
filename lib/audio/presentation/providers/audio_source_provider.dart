import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_soloud/flutter_soloud.dart';
import 'package:ttscord/audio/presentation/datamodels/audio_location.dart';
import 'package:ttscord/audio/presentation/providers/soloud_provider.dart';

final audioSourceProvider = FutureProvider.family<AudioSource, AudioLocation>((
  ref,
  location,
) async {
  final soLoud = await ref.watch(soLoudProvider.future);

  late final AudioSource sound;
  switch (location) {
    case AssetLocation(:final key):
      sound = await soLoud.loadAsset(key);
  }

  return sound;
});

final ringToneSourceProvider = FutureProvider<AudioSource>((ref) async {
  return await ref.watch(
    audioSourceProvider(AssetLocation("assets/audio/ringtone.mp3")).future,
  );
});

final connectedSourceProvider = FutureProvider<AudioSource>((ref) async {
  return await ref.watch(
    audioSourceProvider(AssetLocation("assets/audio/connected.mp3")).future,
  );
});

final disconnectedSourceProvider = FutureProvider<AudioSource>((ref) async {
  return await ref.watch(
    audioSourceProvider(AssetLocation("assets/audio/disconnected.mp3")).future,
  );
});
