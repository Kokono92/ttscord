import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:ttscord/common/datamodel/channel.dart';
import 'package:ttscord/text_chat/presentation/widgets/text_chat_sheet.dart';
import 'package:ttscord/utility/extensions.dart';

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
        mainAxisAlignment: MainAxisAlignment.start,
        spacing: 4,
        children: [
          for (final (i, user) in channel.joiningUsers.indexed)
            Padding(
              padding: EdgeInsetsGeometry.all(12),
              child: Row(
                spacing: 16,
                children: [
                  SizedBox(width: 36, child: CircleAvatar()),
                  Text(user.name),
                  Spacer(),
                  Icon(Icons.mic),
                ],
              ),
            ),
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
          _DummyMicButton(),
          Expanded(
            child: FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
              ),
              onPressed: () {},
              child: Text("ボイスチャンネルに参加"),
            ),
          ),
          _ShowTextChatButton(channel),
        ],
      ),
    );
  }
}

class _DummyMicButton extends HookWidget {
  const _DummyMicButton();

  @override
  Widget build(BuildContext context) {
    final isMuted = useState(false);

    return IconButton(
      style: IconButton.styleFrom(
        backgroundColor:
            isMuted.value
                ? Colors.white
                : Theme.of(context).colorScheme.surfaceContainerHigh,
        foregroundColor: isMuted.value ? Colors.red : Colors.white,
      ),
      onPressed: isMuted.toggleAndNotify,
      icon: Transform.flip(
        flipX: true,
        child: Icon(isMuted.value ? (Icons.mic_off) : Icons.mic),
      ),
    );
  }
}

// TODO: こいつにも未読バッジはございます
class _ShowTextChatButton extends StatelessWidget {
  final Channel channel;

  const _ShowTextChatButton(this.channel);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: IconButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.surfaceContainerHigh,
        foregroundColor: Colors.white,
      ),
      onPressed:
          () => showBottomSheet(
            context: context,
            builder: (context) => TextChatSheet(channel),
          ),
      icon: Icon(PhosphorIconsFill.chatCircle),
    );
  }
}
