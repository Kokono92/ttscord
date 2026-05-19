import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ttscord/core/domain/datamodel/channel.dart';
import 'package:ttscord/core/domain/datamodel/character_profile.dart';
import 'package:ttscord/core/domain/datamodel/image_source.dart';
import 'package:ttscord/server/domain/datamodel/channel_category.dart';
import 'package:ttscord/server/domain/datamodel/server.dart';

class ServerEditorView extends HookWidget {
  const ServerEditorView({super.key});

  @override
  Widget build(BuildContext context) {
    final server = Server(
      displayName: 'おしゃべり部',
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
          joiningUsers: [],
        ),
      ],
    );

    final jsonText = server.toJson();

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("JSON:"),
          SelectionArea(child: Text(jsonText)),
          TextButton(
            onPressed: () {
              () async {
                await Clipboard.setData(ClipboardData(text: jsonText));
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text("Copied!")));
              }();
            },
            child: Text("Copy"),
          ),
        ],
      ),
    );
  }
}
