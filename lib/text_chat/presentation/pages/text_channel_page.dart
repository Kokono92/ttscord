import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:ttscord/server/domain/datamodel/server.dart';

class TextChannelPage extends StatelessWidget {
  final Channel channel;
  const TextChannelPage(this.channel, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: Column(children: [Divider()]),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      title: Row(
        spacing: 8,
        children: [
          Icon(PhosphorIconsRegular.hash),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(channel.name),
              Text("🟢1人がオンライン", style: Theme.of(context).textTheme.labelSmall),
            ],
          ),
        ],
      ),
      actions: [], // 検索ボタンがあるがオミット。ヒントボタンを置くのはあり
    );
  }
}
