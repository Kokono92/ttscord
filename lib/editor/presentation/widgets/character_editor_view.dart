import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ttscord/core/domain/datamodel/character_profile.dart';
import 'package:ttscord/core/domain/datamodel/image_source.dart';

class CharacterEditorView extends HookWidget {
  const CharacterEditorView({super.key});

  @override
  Widget build(BuildContext context) {
    final character = CharacterProfile(
      name: "akari",
      iconSource: ImageSource(identifier: "akari_icon", format: "jpg"),
      bannarColor: Colors.blue,
    );

    final jsonText = character.toJson();

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
