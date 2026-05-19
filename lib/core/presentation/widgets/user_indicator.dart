import 'package:flutter/material.dart';
import 'package:ttscord/core/application/dataclasses/with_origin.dart';
import 'package:ttscord/core/domain/datamodel/character_profile.dart';
import 'package:ttscord/core/presentation/widgets/character_avatar.dart';

class UserIndicator extends StatelessWidget {
  final WithOrigin<CharacterProfile> originatedProfile;
  final double avatarSize;

  const UserIndicator(
    this.originatedProfile, {
    required this.avatarSize,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final iconSize = avatarSize * 0.8;
    final spacing = avatarSize * 0.4;

    final profile = originatedProfile.content;

    return Row(
      spacing: spacing,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: avatarSize,
          child: CharacterAvatar(
            originatedProfile.propagate((e) => e.iconSource),
          ),
        ),
        Text(profile.name),
        Spacer(),
        if (profile.isMicMuted) Icon(Icons.mic, size: iconSize),
        if (profile.isSpeakerMuted) Icon(Icons.headset_off, size: iconSize),
      ],
    );
  }
}
