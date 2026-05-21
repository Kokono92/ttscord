import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ttscord/audio/presentation/providers/audio_source_provider.dart';
import 'package:ttscord/audio/presentation/providers/soloud_provider.dart';
import 'package:ttscord/core/application/provider/ongoing_flow_provider.dart';
import 'package:ttscord/core/domain/datamodel/references.dart';
import 'package:ttscord/core/domain/datamodel/triggers.dart';
import 'package:ttscord/core/presentation/datamodel/conversation_target.dart';
import 'package:ttscord/router.dart';
import 'package:ttscord/voice_call/application/providers/active_call_session_provider.dart';

class AppEventsListener extends ConsumerWidget {
  final Widget child;

  const AppEventsListener({required this.child, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(activeCallSessionProvider, (_, active) {
      debugPrint(active.toString());

      if (active != null) {
        // initiation
        router.push("/call", extra: active.target);
        () async {
          final soLoud = await ref.watch(soLoudProvider.future);
          await soLoud.disposeAllSources();
          final sound = await ref.watch(ringToneSourceProvider.future);
          soLoud.play(sound, looping: true);

          // シナリオトリガーを検索する
          late final trigger;
          switch (active.target) {
            case CharacterConversationTarget(:final profile):
              // これはダメ。name != identifierなので。
              // WithIdentifierな構造でも作る？
              trigger = JoinDmCallTrigger(CharacterReference(profile.name));
          }

          final flow = ref
              .read(ongoingFlowProvider.notifier)
              .activateBy(trigger);
        }();
      } else {
        // disconnected
        // ページをルートしたりしなかったりするのきもちわるいな…
        () async {
          final soLoud = await ref.watch(soLoudProvider.future);
          await soLoud.disposeAllSources();
          final sound = await ref.watch(disconnectedSourceProvider.future);
          soLoud.play(sound);
        }();
      }
    });

    return child;
  }
}
