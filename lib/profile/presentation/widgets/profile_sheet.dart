import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ttscord/core/application/dataclasses/with_origin.dart';
import 'package:ttscord/core/domain/datamodel/character_profile.dart';
import 'package:ttscord/profile/presentation/widgets/avater_on_banner.dart';

void showProfileSheet(
  BuildContext context,
  WithOrigin<CharacterProfile> originatedProfile,
) {
  showModalBottomSheet(
    clipBehavior: Clip.antiAlias,
    context: context,
    builder: (_) => ProfileSheet(originatedProfile),
  );
}

class ProfileSheet extends ConsumerWidget {
  final WithOrigin<CharacterProfile> originatedProfile;

  const ProfileSheet(this.originatedProfile, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      child: AvatarOnBanner(originatedProfile: originatedProfile),
    );
  }
}
