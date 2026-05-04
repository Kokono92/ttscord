import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:ttscord/common/presentation/datamodel/conversation_target.dart';
import 'package:ttscord/text_chat/presentation/widgets/text_chat_sheet.dart';
import 'package:ttscord/utility/extensions.dart';

mixin _IconStyle {
  ButtonStyle getStyle(context) => IconButton.styleFrom(
    backgroundColor: Theme.of(context).colorScheme.surfaceContainerHigh,
    foregroundColor: Theme.of(context).colorScheme.onSurface,
  );
}

class DummyCamButton extends HookWidget with _IconStyle {
  const DummyCamButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: getStyle(context),
      onPressed: () {},
      icon: Icon(Icons.videocam_off),
    );
  }
}

class DummyMicButton extends HookWidget with _IconStyle {
  const DummyMicButton({super.key});

  @override
  Widget build(BuildContext context) {
    final isMuted = useState(false);

    return IconButton(
      style:
          isMuted.value
              ? IconButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.red,
              )
              : getStyle(context),
      onPressed: isMuted.toggleAndNotify,
      icon: Icon(isMuted.value ? (Icons.mic_off) : Icons.mic),
    );
  }
}

// TODO: こいつにも未読バッジはございます
class ShowTextChatButton extends StatelessWidget with _IconStyle {
  final ConversationTarget target;

  const ShowTextChatButton(this.target, {super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: getStyle(context),
      onPressed:
          () => showModalBottomSheet(
            context: context,
            builder: (context) => TextChatSheet(target),
          ),
      icon: Icon(PhosphorIconsFill.chatCircle),
    );
  }
}

class HangUpButton extends StatelessWidget {
  const HangUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: IconButton.styleFrom(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      onPressed: () {},
      icon: Icon(Icons.call_end),
    );
  }
}
