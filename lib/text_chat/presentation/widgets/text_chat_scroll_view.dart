import 'package:flutter/material.dart';
import 'package:ttscord/server/domain/datamodel/server.dart';

class TextChatScrollView extends StatelessWidget {
  final Channel channel;

  const TextChatScrollView(this.channel, {super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView();
  }
}
