import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ttscord/core/presentation/widgets/long_bar_button.dart';
import 'package:ttscord/profile/presentation/widgets/avater_on_banner.dart';
import 'package:ttscord/profile/presentation/widgets/dlc_tab_view.dart';
import 'package:ttscord/profile/presentation/widgets/main_tab_view.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16.0,
      children: [
        AvatarOnBanner(),
        _EditButton(),
        Expanded(child: ProfileTabView()),
      ],
    );
  }
}

class ProfileTabView extends HookWidget {
  static const _tabPadding = 16.0;

  const ProfileTabView({super.key});

  @override
  Widget build(BuildContext context) {
    final tabViewPairs = [
      (
        tab: Padding(
          padding: EdgeInsetsGeometry.all(_tabPadding),
          child: Text("メイン"),
        ),
        view: MainTabView(),
      ),
      (
        tab: Padding(
          padding: EdgeInsetsGeometry.all(_tabPadding),
          child: Text("DLC"),
        ),
        view: DlcTabView(),
      ),
    ];

    final controller = useTabController(initialLength: 2);

    return Column(
      children: [
        TabBar(
          tabs: tabViewPairs.map((e) => e.tab).toList(),
          controller: controller,
        ),

        Expanded(
          child: TabBarView(
            controller: controller,
            children: tabViewPairs.map((e) => e.view).toList(),
          ),
        ),
      ],
    );
  }
}

class _EditButton extends StatelessWidget {
  const _EditButton();

  @override
  Widget build(BuildContext context) {
    return LongBarButton(
      style: FilledButton.styleFrom(),
      iconData: Icons.edit,
      text: "プロフィール編集",
      onPressed: () {},
    );
  }
}
