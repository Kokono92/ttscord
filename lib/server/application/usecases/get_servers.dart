import 'package:ttscord/common/domain/datamodel/channel.dart';
import 'package:ttscord/common/domain/datamodel/user.dart';
import 'package:ttscord/server/domain/datamodel/channel_category.dart';
import 'package:ttscord/server/domain/datamodel/server.dart';

List<Server> getServers() {
  return [
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
}
