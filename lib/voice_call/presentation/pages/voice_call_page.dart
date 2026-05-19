import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ttscord/core/presentation/datamodel/conversation_target.dart';
import 'package:ttscord/core/presentation/provider/audio_player_provider.dart';
import 'package:ttscord/voice_call/presentation/widgets/buttons.dart';

class VoiceCallPage extends HookConsumerWidget {
  final ConversationTarget target;

  const VoiceCallPage(this.target, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final player = ref.read(audioPlayerProvider);

    useEffect(() {
      () async {
        await (
          player.setSource(AssetSource('audio/ringtone.mp3')),
          player.setReleaseMode(ReleaseMode.loop),
        ).wait;
        await player.resume();
      }();
    }, []);

    return Scaffold(
      appBar: _buildAppBar(context),
      body: Padding(
        padding: EdgeInsetsGeometry.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: _ParticipantsTileView()),
            _VoiceCallActionMenu(target),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(title: Text(target.title));
  }
}

class _ParticipantsTileView extends StatelessWidget {
  const _ParticipantsTileView();

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class _VoiceCallActionMenu extends StatelessWidget {
  final ConversationTarget target;

  const _VoiceCallActionMenu(this.target);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        color: Theme.of(context).colorScheme.surfaceContainer,
      ),
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          DummyCamButton(),
          DummyMicButton(),
          ShowTextChatButton(target),
          HangUpButton(),
        ],
      ),
    );
  }
}
