import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:ttscord/core/application/dataclasses/data_or_error.dart';
import 'package:ttscord/core/application/dataclasses/with_origin.dart';
import 'package:ttscord/core/application/provider/friend_list_provider.dart';
import 'package:ttscord/core/domain/datamodel/character_profile.dart';
import 'package:ttscord/core/presentation/widgets/character_avatar.dart';
import 'package:ttscord/home/presentation/pages/main_page.dart';
import 'package:ttscord/home/presentation/widgets/content_region.dart';
import 'package:ttscord/core/presentation/widgets/long_bar_button.dart';
import 'package:ttscord/home/presentation/widgets/left_navigation.dart';
import 'package:ttscord/profile/presentation/widgets/profile_sheet.dart';

class MessageRegion extends StatelessWidget {
  const MessageRegion({super.key});

  @override
  Widget build(BuildContext context) => ContentRegion(
    title: "メッセージ",
    child: Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 10, bottom: 15, left: 30, right: 30),
          child: LongBarButton(
            iconData: PhosphorIconsFill.userPlus,
            text: "フレンドを追加",
            onPressed:
                () => Navigator.of(context).pushReplacement(
                  PageRouteBuilder(
                    pageBuilder:
                        (_, _, _) => MainPage(
                          homeInitialDestination: addContentsDestination,
                        ),
                  ),
                ),
          ),
        ),

        SizedBox(height: 80, width: double.maxFinite, child: _FriendsView()),
      ],
    ),
  );
}

class _FriendsView extends ConsumerWidget {
  const _FriendsView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final friends =
        ref
            .watch(friendListProvider)
            .whereContentType<Data<CharacterProfile>>()
            .map((e) => e.propagate((content) => content.data))
            .toList();

    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(children: friends.map((e) => _FriendSquareCard(e)).toList()),
      ),
    );
  }
}

class _FriendSquareCard extends StatelessWidget {
  final WithOrigin<CharacterProfile> originatedProfile;

  const _FriendSquareCard(this.originatedProfile);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.0,
      child: InkWell(
        onTap: () => showProfileSheet(context, originatedProfile),
        child: Card(
          color: Theme.of(context).colorScheme.surfaceContainerHighest,
          child: Padding(
            padding: EdgeInsetsGeometry.all(16),
            child: CharacterAvatar(
              originatedProfile.propagate((e) => e.iconSource),
            ),
          ),
        ),
      ),
    );
  }
}
