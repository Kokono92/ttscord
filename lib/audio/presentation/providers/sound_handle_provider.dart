import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_soloud/flutter_soloud.dart';
import 'package:ttscord/audio/presentation/datamodels/audio_location.dart';
import 'package:ttscord/audio/presentation/providers/audio_source_provider.dart';
import 'package:ttscord/audio/presentation/providers/mix_bus_provider.dart';

typedef _Params = ({String busName, AudioLocation location});

final soundHandleProvider = FutureProvider.family
    .autoDispose<SoundHandle, _Params>((ref, params) async {
      final bus = await ref.watch(mixBusProvider(params.busName).future);
      final sound = await ref.watch(
        audioSourceProvider(params.location).future,
      );
      final handle = bus.play(sound);
      return handle;
    });
