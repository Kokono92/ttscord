import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:ttscord/presentation/widgets/content_region.dart';
import 'package:ttscord/presentation/widgets/long_bar_button.dart';

class MessageRegion extends StatelessWidget {
  const MessageRegion({super.key});

  @override
  Widget build(BuildContext context) => ContentRegion(
    title: "メッセージ",
    child: Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 10, bottom: 15, left: 30, right: 30),
          child: LongBarButton(
            iconData: PhosphorIconsFill.userPlus,
            text: "フレンドを追加",
          ),
        ),
      ],
    ),
  );
}
