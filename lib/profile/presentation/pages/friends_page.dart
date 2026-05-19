import "dart:ui" as ui;
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:page_transition/page_transition.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:ttscord/core/application/dataclasses/data_or_error.dart';
import 'package:ttscord/core/application/dataclasses/with_origin.dart';
import 'package:ttscord/core/application/provider/characte_profiler_provider.dart';
import 'package:ttscord/core/application/provider/friend_list_provider.dart';
import 'package:ttscord/core/application/provider/image_provider.dart';
import 'package:ttscord/core/application/provider/scenario_provider.dart';
import 'package:ttscord/core/application/provider/scenario_sources_provider.dart';
import 'package:ttscord/core/domain/datamodel/character_profile.dart';
import 'package:ttscord/core/domain/datamodel/references.dart';
import 'package:ttscord/core/presentation/datamodel/conversation_target.dart';
import 'package:ttscord/core/presentation/provider/ui_image_provider.dart';
import 'package:ttscord/core/presentation/widgets/character_avatar.dart';
import 'package:ttscord/home/presentation/pages/main_page.dart';
import 'package:ttscord/home/presentation/widgets/left_navigation.dart';
import 'package:ttscord/voice_call/presentation/pages/voice_call_page.dart';
import 'package:ttscord/voice_call/presentation/widgets/buttons.dart';

class FriendsPage extends StatelessWidget {
  const FriendsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("フレンド"),
        actions: [
          TextButton(
            onPressed:
                () => Navigator.of(context).push(
                  PageTransition(
                    type: PageTransitionType.rightToLeft,
                    child: MainPage(
                      homeInitialDestination: addContentsDestination,
                    ),
                  ),
                ),
            child: Text("フレンドを追加"),
          ),
        ],
      ),

      body: _FriendListView(),
    );
  }
}

class _FriendListView extends ConsumerWidget {
  const _FriendListView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final friends =
        ref
            .watch(friendListProvider)
            .whereContentType<Data<CharacterProfile>>()
            .map((e) => e.propagate((content) => content.data))
            .toList();

    return ListView.builder(
      itemCount: friends.length,
      itemBuilder: (context, index) {
        // TODO: InkWellにしてカードを出す
        return FriendCard(friends[index]);
      },
    );
  }
}

class FriendCard extends ConsumerWidget {
  final WithOrigin<CharacterProfile> originatedProfile;

  const FriendCard(this.originatedProfile, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = originatedProfile.content;

    return Card(
      color: Theme.of(context).colorScheme.surfaceContainerHigh,
      child: Row(
        children: [
          CharacterAvatar(originatedProfile.propagate((e) => e.iconSource)),
          Text(profile.name),
          Spacer(),
          IconButton(
            // TODO:  本当はチャット画面を挟む
            onPressed:
                () => Navigator.of(context).push(
                  PageTransition(
                    type: PageTransitionType.bottomToTop,
                    child: VoiceCallPage(CharacterConversationTarget(profile)),
                  ),
                ),
            icon: Icon(PhosphorIconsFill.phoneCall),
          ),
          // TODO: 遷移先の画面ちゃんとつくる
          //ShowTextChatButton(target),
        ],
      ),
    );
  }
}
