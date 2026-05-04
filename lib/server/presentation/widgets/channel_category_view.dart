import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ttscord/server/domain/datamodel/channel_category.dart';
import 'package:ttscord/server/domain/datamodel/server.dart';
import 'package:ttscord/server/presentation/widgets/channel_tile.dart';

// TODO: 折りたたまれない条件: Focus or 未読あり

class ChannelCategoryView extends HookWidget {
  final Server server;
  final ChannelCategory? category;
  final int selectedIndex;
  final Function(int) onSelected;

  const ChannelCategoryView({
    required this.server,
    required this.category,
    required this.selectedIndex,
    required this.onSelected,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final expanded = useState(true);
    final children = [
      for (final (i, channel) in server.channels.indexed.where(
        (item) => item.$2.categoryId == category?.id,
      ))
        ChannelTile(
          channel: channel,
          isSelected: selectedIndex == i,
          onSelected: () => onSelected(i),
        ),
    ];

    return Padding(
      padding: EdgeInsets.only(right: 15, top: 10),
      child: Column(
        children: <Widget>[
          if (category != null)
            GestureDetector(
              onTap: () => expanded.value = !expanded.value,

              child: Row(
                spacing: 4,
                children: [
                  RotatedBox(
                    quarterTurns: expanded.value ? 0 : -1,
                    child: Icon(Icons.expand_more, size: 16),
                  ),
                  Text(
                    category!.name,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ],
              ),
            ),

          Column(
            children:
                (expanded.value
                    ? children
                    : children
                        .where((channel) => channel.alwaysShown)
                        .toList()),
          ),
        ],
      ),
    );
  }
}
