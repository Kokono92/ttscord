import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:ttscord/profile/presentation/pages/friends_page.dart';

class MainTabView extends StatelessWidget {
  const MainTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [FriendsCard(), MemoCard()]);
  }
}

mixin CardPadding {
  EdgeInsets get padding => EdgeInsets.all(16);
}

class FriendsCard extends StatelessWidget with CardPadding {
  const FriendsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:
          () => Navigator.of(context).push(
            PageTransition(
              type: PageTransitionType.rightToLeft,
              child: FriendsPage(),
            ),
          ),
      child: Card(
        child: Padding(padding: padding, child: Row(children: [Text("フレンド")])),
      ),
    );
  }
}

class MemoCard extends StatelessWidget with CardPadding {
  const MemoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: padding,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text("メモ（自分だけに表示）"), Icon(Icons.article, size: 16)],
        ),
      ),
    );
  }
}
