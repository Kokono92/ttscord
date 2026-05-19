import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:ttscord/core/application/dataclasses/with_origin.dart';
import 'package:ttscord/core/domain/datamodel/character_profile.dart';
import 'package:ttscord/core/presentation/datamodel/conversation_target.dart';
import 'package:ttscord/core/presentation/widgets/long_bar_button.dart';
import 'package:ttscord/profile/presentation/widgets/avater_on_banner.dart';
import 'package:ttscord/text_chat/presentation/pages/text_channel_page.dart';
import 'package:ttscord/voice_call/presentation/pages/voice_call_page.dart';

class ProfileHeader extends StatelessWidget {
  final WithOrigin<CharacterProfile>? originatedProfile;

  const ProfileHeader(this.originatedProfile, {super.key});

  @override
  Widget build(BuildContext context) {
    final profile = originatedProfile?.content;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AvatarOnBanner(originatedProfile: originatedProfile),
        Padding(
          padding: EdgeInsetsGeometry.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 16,
            children: [
              Text(
                profile?.name ?? "",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
