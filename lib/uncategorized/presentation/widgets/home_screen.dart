import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ttscord/server/domain/datamodel/server.dart';
import 'package:ttscord/uncategorized/domain/datamodel/user.dart';
import 'package:ttscord/uncategorized/presentation/widgets/add_server_region.dart';
import 'package:ttscord/uncategorized/presentation/widgets/left_navigation.dart';
import 'package:ttscord/uncategorized/presentation/widgets/message_region.dart';
import 'package:ttscord/server/presentation/widgets/server_region.dart';

class HomeScreen extends HookWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedIndex = useState<DestinationType>(messagesDestination);
    final servers = [
      Server(
        name: 'おしゃべり部',
        id: 1,
        iconPath: null,
        categories: [
          ChannelCategory(name: "業務連絡", id: 1),
          ChannelCategory(name: "クリエイティブ", id: 2),
          ChannelCategory(name: "井戸端", id: 3),
          ChannelCategory(name: "アーカイブ", id: 4),
        ],
        channels: [
          Channel(type: ChannelType.text, name: "なんでも雑談"),
          Channel(type: ChannelType.text, name: "どうぶつを貼るところ"),
          Channel(type: ChannelType.text, name: "事務所管理", categoryId: 1),
          Channel(type: ChannelType.text, name: "スケジュール調整", categoryId: 1),
          Channel(type: ChannelType.text, name: "コラボ募集", categoryId: 1),
          Channel(type: ChannelType.text, name: "イベント関連", categoryId: 1),
          Channel(type: ChannelType.voice, name: "企画とか会議", categoryId: 1),
          Channel(type: ChannelType.text, name: "進捗晒し", categoryId: 2),
          Channel(type: ChannelType.text, name: "ノウハウ共有", categoryId: 2),
          Channel(type: ChannelType.text, name: "機材とか", categoryId: 2),
          Channel(type: ChannelType.text, name: "素材", categoryId: 2),
          Channel(type: ChannelType.voice, name: "駆け込み寺", categoryId: 2),
          Channel(type: ChannelType.voice, name: "作業通話", categoryId: 2),
          Channel(type: ChannelType.text, name: "コスメ・ファッション", categoryId: 3),
          Channel(type: ChannelType.text, name: "うまいめし", categoryId: 3),
          Channel(type: ChannelType.text, name: "CPK!観た人！！！！！！", categoryId: 3),
          Channel(type: ChannelType.text, name: "同時視聴 (調整)", categoryId: 3),
          Channel(type: ChannelType.voice, name: "同時視聴 (会場)", categoryId: 3),
          Channel(
            type: ChannelType.voice,
            name: "🎉🎂お誕生日様会場🍰🎊",
            joiningUsers: [User(name: "本日の主役👑"), User(name: "顔と声が良い")],
          ),
        ],
      ),
    ];

    return Row(
      children: [
        LeftNavigation(
          selectedDestination: selectedIndex.value,
          onSelectionChanged: (newIndex) {
            selectedIndex.value = newIndex;
          },
          servers: servers,
        ),

        _buildContent(context, selectedIndex.value),
      ],
    );
  }

  Widget _buildContent(BuildContext context, DestinationType dest) {
    switch (dest) {
      case MessagesDestination():
        return MessageRegion();

      case AddServerDestination():
        return AddServerRegion();

      case ServerDestination(:final server):
        return ServerRegion(server: server);
    }
  }
}
