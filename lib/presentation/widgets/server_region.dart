import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:ttscord/domain/datamodel/server.dart';
import 'package:ttscord/presentation/widgets/content_region.dart';
import 'package:ttscord/presentation/widgets/long_bar_button.dart';

class ServerRegion extends StatelessWidget {
  final Server server;

  const ServerRegion({required this.server, super.key});

  @override
  Widget build(BuildContext context) => ContentRegion(
    title: server.name,
    child: Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 10, bottom: 15, left: 30, right: 30),
          child: LongBarButton(iconData: Icons.search, text: "検索"),
        ),
        Divider(),

        ChannelListView(
          children: [
            ChannelCategoryView(
              title: "テキストチャンネル",
              children: [
                ChannelTile(
                  type: ChannelType.text,
                  title: "一般",
                  alwaysShown: true,
                ),
              ],
            ),
            ChannelCategoryView(
              title: "ボイスチャンネル",
              children: [ChannelTile(type: ChannelType.voice, title: "一般")],
            ),
          ],
        ),
      ],
    ),
  );
}

class ChannelListView extends HookWidget {
  final List<ChannelCategoryView> children;

  const ChannelListView({required this.children, super.key});

  @override
  Widget build(BuildContext context) {
    final selectedChannel = useState(-1);

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: children,
      ),
    );
  }
}

class ChannelCategoryView extends HookWidget {
  final String title;
  final List<ChannelTile> children;

  const ChannelCategoryView({
    required this.title,
    required this.children,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final expanded = useState(true);
    return Column(
      children: <Widget>[
        GestureDetector(
          onTap: () => expanded.value = !expanded.value,
          child: Row(
            children: [
              RotatedBox(
                quarterTurns: expanded.value ? 0 : -1,
                child: Icon(Icons.expand_more, size: 16),
              ),
              Text(title, style: Theme.of(context).textTheme.titleSmall),
            ],
          ),
        ),

        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Column(
            children:
                (expanded.value
                    ? children
                    : children
                        .where((channel) => channel.alwaysShown)
                        .toList()),
          ),
        ),
      ],
    );
  }
}

enum ChannelType { text, voice }

class ChannelTile extends StatelessWidget {
  final ChannelType type;
  final String title;
  final bool alwaysShown;

  const ChannelTile({
    required this.type,
    required this.title,
    this.alwaysShown = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Row(
    children: [
      _buildIcon(),
      Padding(
        padding: EdgeInsetsGeometry.all(10),
        child: Text(title, style: Theme.of(context).textTheme.titleMedium),
      ),
    ],
  );

  Widget _buildIcon() {
    switch (type) {
      case ChannelType.text:
        return Icon(PhosphorIconsRegular.hash);
      case ChannelType.voice:
        return Icon(Icons.volume_up);
    }
  }
}
