import 'package:flutter/material.dart';
import 'package:ttscord/common/domain/datamodel/user.dart';

class UserIndicator extends StatelessWidget {
  final User user;
  final double avatarSize;

  const UserIndicator(this.user, {required this.avatarSize, super.key});

  @override
  Widget build(BuildContext context) {
    final iconSize = avatarSize * 0.8;
    final spacing = avatarSize * 0.4;

    return Row(
      spacing: spacing,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(width: avatarSize, child: CircleAvatar()),
        Text(user.name),
        Spacer(),
        if (user.isMicMuted) Icon(Icons.mic, size: iconSize),
        if (user.isSpeakerMuted) Icon(Icons.headset_off, size: iconSize),
      ],
    );
  }
}
