import 'package:flutter/material.dart';
import 'package:ttscord/common/domain/datamodel/channel.dart';
import 'package:ttscord/text_chat/domain/datamodel/chat_message.dart';
import 'package:ttscord/text_chat/application/usecases/get_messages.dart';

class TextChatScrollView extends StatelessWidget {
  final Channel channel;

  const TextChatScrollView(this.channel, {super.key});

  @override
  Widget build(BuildContext context) {
    final List<ChatMessage> messages = getMessages(channel);
    return SingleChildScrollView(child: Column(children: []));
  }
}
