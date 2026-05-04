import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:ttscord/common/domain/datamodel/channel.dart';
import 'package:ttscord/voice_call/presentation/widgets/join_voice_channel_sheet.dart';
import 'package:ttscord/text_chat/presentation/pages/text_channel_page.dart';
import 'package:ttscord/common/domain/datamodel/user.dart';

class ChannelTile extends StatelessWidget {
  final Channel channel;
  final bool isSelected;
  final bool alwaysShown;
  final Function() onSelected;

  const ChannelTile({
    required this.channel,
    required this.isSelected,
    required this.onSelected,
    this.alwaysShown = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Padding(
    padding: EdgeInsets.only(left: 10),
    child: GestureDetector(
      onTap: () {
        onSelected();

        switch (channel.type) {
          case ChannelType.text:
            Navigator.of(context).push(
              PageTransition(
                type: PageTransitionType.rightToLeft,
                child: TextChannelPage(channel),
              ),
            );
          case ChannelType.voice:
            showModalBottomSheet(
              context: context,
              builder: (_) => JoinVoiceChannelSheet(channel),
            );
        }
      },
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color:
                  isSelected
                      ? Theme.of(context).colorScheme.surfaceContainerHigh
                      : Colors.transparent,
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsetsGeometry.only(left: 10, right: 10),
                  child: _buildIcon(),
                ),
                Text(
                  channel.name,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.only(left: 40),
            child: Column(
              children: [
                if (channel.type == ChannelType.voice)
                  //for (user in channel.)
                  for (User user in channel.joiningUsers) _UserIndicator(user),
              ],
            ),
          ),
        ],
      ),
    ),
  );

  Widget _buildIcon() {
    switch (channel.type) {
      case ChannelType.text:
        return Icon(PhosphorIconsRegular.hash, size: 20);
      case ChannelType.voice:
        return Icon(Icons.volume_up, size: 20);
    }
  }
}

class _UserIndicator extends StatelessWidget {
  final User user;

  const _UserIndicator(this.user);

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(width: 20, child: CircleAvatar()),
        Text(user.name),
        Spacer(),
        if (user.isMicMuted) Icon(Icons.mic, size: 16),
        if (user.isSpeakerMuted) Icon(Icons.headset_off, size: 16),
      ],
    );
  }
}
