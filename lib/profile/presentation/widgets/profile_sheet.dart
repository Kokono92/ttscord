import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:page_transition/page_transition.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:ttscord/core/application/dataclasses/with_origin.dart';
import 'package:ttscord/core/domain/datamodel/character_profile.dart';
import 'package:ttscord/core/presentation/datamodel/conversation_target.dart';
import 'package:ttscord/core/presentation/widgets/long_bar_button.dart';
import 'package:ttscord/profile/presentation/widgets/profile_header.dart';
import 'package:ttscord/voice_call/application/providers/active_call_session_provider.dart';
import 'package:ttscord/voice_call/presentation/pages/voice_call_page.dart';

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
    final profile = originatedProfile.content;
    return Column(
      children: [
        ProfileHeader(originatedProfile),
        Padding(
          padding: EdgeInsetsGeometry.all(16),
          child: Row(
            spacing: 16,
            children: [
              /*
                  // TODO: メッセまわり実装して追加
                  Expanded(
                    child: LongBarButton(
                      onPressed:
                          () => Navigator.of(context).push(
                            PageTransition(
                              type: PageTransitionType.rightToLeft,
                              child: TextChannelPage(channel),
                            ),
                          ),
                      iconData: PhosphorIconsFill.chatCircle,
                      text: "メッセージ",
                    ),
                  ),
                  */
              Expanded(
                child: LongBarButton(
                  onPressed:
                      () => showDialog(
                        context: context,
                        builder: (context) => _CallConfirmationDialog(profile!),
                      ),
                  iconData: PhosphorIconsFill.phoneCall,
                  text: "通話",
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _CallConfirmationDialog extends ConsumerWidget {
  final CharacterProfile profile;
  const _CallConfirmationDialog(this.profile);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SimpleDialog(
      title: Center(
        child: Text("通話の準備はOK？"),
      ), //, style: Theme.of(context).textTheme.titleLarge),
      children: [
        Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 32),
          child: Column(
            spacing: 16,
            children: [
              Text("しっかり確認して、準備ができたら入りましょう。"),
              LongBarButton(
                style: FilledButton.styleFrom(backgroundColor: Colors.green),
                onPressed: () {
                  Navigator.of(context).pop(); // dialog
                  Navigator.of(context).pop(); // sheet
                  ref
                      .read(activeCallSessionProvider.notifier)
                      .initiateCallSession(
                        CharacterConversationTarget(profile),
                      );
                },
                iconData: null,
                text: "通話を開始",
              ),
              LongBarButton(
                onPressed: () => Navigator.of(context).pop(),
                iconData: null,
                text: "キャンセル",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
