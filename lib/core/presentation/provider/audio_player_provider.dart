import 'package:audioplayers/audioplayers.dart';
import 'package:riverpod/riverpod.dart';

final audioPlayerProvider = Provider<AudioPlayer>(isAutoDispose: true, (ref) {
  final player = AudioPlayer();
  ref.onDispose(player.stop);
  return player;
});
