import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:page_transition/page_transition.dart';
import 'package:ttscord/core/application/dataclasses/data_or_error.dart';
import 'package:ttscord/core/application/provider/characte_profiler_provider.dart';
import 'package:ttscord/core/application/provider/friend_list_provider.dart';
import 'package:ttscord/core/application/provider/scenario_provider.dart';
import 'package:ttscord/core/application/provider/scenario_sources_provider.dart';
import 'package:ttscord/core/domain/datamodel/character_profile.dart';
import 'package:ttscord/core/domain/datamodel/references.dart';
import 'package:ttscord/home/presentation/pages/main_page.dart';
import 'package:ttscord/home/presentation/widgets/left_navigation.dart';

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
        ref.watch(friendListProvider).whereType<Data<CharacterProfile>>();

    return ListView.builder(
      itemCount: friends.length,
      itemBuilder: (context, index) {
        final profile = friends.elementAt(index).data;
        return Card(child: Text(profile.name));
      },
    );
  }
}
