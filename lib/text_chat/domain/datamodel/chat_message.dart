import 'package:dart_mappable/dart_mappable.dart';

part 'chat_message.mapper.dart';

@MappableClass()
class ChatMessage with ChatMessageMappable {
  final String body;
  final DateTime dateTime;

  const ChatMessage({required this.body, required this.dateTime});
}
