import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ttscord/server/domain/datamodel/channel_category.dart';
import 'package:ttscord/server/domain/datamodel/server.dart';
import 'package:ttscord/server/presentation/widgets/channel_category_view.dart';
import 'package:ttscord/home/presentation/widgets/content_region.dart';
import 'package:ttscord/core/presentation/widgets/long_bar_button.dart';

// TODO: Padding/Spacingの設計を見直す
// TODO: 鯖アイコンを押したらアクティブなチャンネルが開く

class ServerRegion extends HookWidget {
  final Server server;

  const ServerRegion({required this.server, super.key});

  @override
  Widget build(BuildContext context) {
    final selectedChannel = useState(-1);
    return ContentRegion(
      title: server.name,
      child: Column(
        spacing: 4,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10, bottom: 15, left: 30, right: 30),
            child: LongBarButton(
              iconData: Icons.search,
              text: "検索",
              onPressed: () {},
            ),
          ),
          Divider(),

          Expanded(
            child: ChannelListView(
              children: [
                ChannelCategoryView(
                  server: server,
                  category: null,
                  selectedIndex: selectedChannel.value,
                  onSelected: (i) => selectedChannel.value = i,
                ),

                for (ChannelCategory category in server.categories)
                  ChannelCategoryView(
                    server: server,
                    category: category,
                    selectedIndex: selectedChannel.value,
                    onSelected: (i) => selectedChannel.value = i,
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ChannelListView extends StatelessWidget {
  final List<ChannelCategoryView> children;

  const ChannelListView({required this.children, super.key});

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: children,
        ),
      ),
    );
  }
}
