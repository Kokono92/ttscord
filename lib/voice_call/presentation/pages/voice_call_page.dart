import 'package:flutter/material.dart';
import 'package:ttscord/common/presentation/datamodel/conversation_target.dart';
import 'package:ttscord/voice_call/presentation/widgets/buttons.dart';

class VoiceCallPage extends StatelessWidget {
  final ConversationTarget target;

  const VoiceCallPage(this.target, {super.key});

  @override
  Widget build(BuildContext context) {
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
