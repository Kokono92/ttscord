import 'package:flutter/material.dart';
import 'package:ttscord/core/presentation/datamodel/conversation_target.dart';
import 'package:ttscord/text_chat/domain/datamodel/chat_message.dart';

class TextChatSheet extends StatelessWidget {
  final List<ChatMessage> messages; // もしチャンネルとDMの弁別が必要になったらtargetを持たせる

  const TextChatSheet(ConversationTarget target, {super.key})
    : messages = const <ChatMessage>[];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      width: double.maxFinite,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsetsGeometry.all(16),
            child: Text("チャット", style: Theme.of(context).textTheme.titleLarge),
          ),

          Expanded(
            child: Container(
              width: double.maxFinite,
              color: Theme.of(context).colorScheme.surfaceContainerLowest,
              child: Text("aaaaa"),
            ),
          ),
        ],
      ),
    );
  }
}
