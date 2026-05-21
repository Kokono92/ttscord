import 'dart:ui_web';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:ttscord/core/application/dataclasses/with_origin.dart';
import 'package:ttscord/core/domain/datamodel/channel.dart';
import 'package:ttscord/core/presentation/datamodel/conversation_target.dart';
import 'package:ttscord/core/presentation/widgets/user_indicator.dart';
import 'package:ttscord/voice_call/presentation/pages/voice_call_page.dart';
import 'package:ttscord/voice_call/presentation/widgets/buttons.dart';

class JoinVoiceChannelSheet extends StatelessWidget {
  final Channel channel;

  const JoinVoiceChannelSheet(this.channel, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.all(12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            spacing: 4,
            children: [
              SizedBox(
                width: 28,
                height: 28,
                child: IconButton(
                  padding: EdgeInsets.all(0),
                  iconSize: 20,
                  style: IconButton.styleFrom(
                    backgroundColor:
                        Theme.of(context).colorScheme.surfaceContainerLowest,
                  ),
                  onPressed: () => context.pop(),
                  icon: RotatedBox(
                    quarterTurns: -1,
                    child: Icon(Icons.chevron_left),
                  ),
                ),
              ),
              Text(channel.name),
            ],
          ),

          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 4, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              spacing: 4,
              children: [
                Text("${channel.joiningUsers.length}人が会話中"),
                _VoiceChannelParticipantsIndicator(channel),

                _ActionMenu(channel),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _VoiceChannelParticipantsIndicator extends StatelessWidget {
  final Channel channel;

  const _VoiceChannelParticipantsIndicator(this.channel);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Theme.of(context).colorScheme.surfaceContainerHigh,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        spacing: 0,
        children: [
          for (final (i, user) in channel.joiningUsers.indexed) ...[
            if (i > 0) Divider(indent: 60, height: 0),

            Padding(
              padding: EdgeInsetsGeometry.all(12),
              // TODO:モックを直す
              child: UserIndicator(
                WithOrigin(
                  origin: Uri.parse("https://ttscord.storage.kokonotes.net/"),
                  content: user,
                ),
                avatarSize: 36,
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class _ActionMenu extends StatelessWidget {
  final Channel channel;
  const _ActionMenu(this.channel);

  @override
  Widget build(BuildContext context) {
    final target = ChannelConversationTarget(channel);

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        color: Theme.of(context).colorScheme.surfaceContainerLowest,
      ),
      padding: EdgeInsets.all(16),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        spacing: 8,
        children: [
          DummyMicButton(),
          Expanded(child: JoinVoiceChannelButton(target)),
          ShowTextChatButton(target),
        ],
      ),
    );
  }
}
