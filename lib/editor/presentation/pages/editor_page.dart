import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ttscord/core/application/provider/characte_profiler_provider.dart';
import 'package:ttscord/core/domain/datamodel/actions.dart';
import 'package:ttscord/core/domain/datamodel/references.dart';
import 'package:ttscord/core/domain/datamodel/scenario.dart';
import 'package:ttscord/core/domain/datamodel/triggers.dart';
import 'package:ttscord/editor/presentation/widgets/character_editor_view.dart';
import 'package:ttscord/editor/presentation/widgets/scenario_editor_view.dart';
import 'package:ttscord/editor/presentation/widgets/server_editor_view.dart';

class EditorPage extends HookWidget {
  const EditorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Edit"),
          bottom: TabBar(
            tabs: [
              Tab(text: "Scenario"),
              Tab(text: "Server"),
              Tab(text: "Character"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ScenarioEditorView(),
            ServerEditorView(),
            CharacterEditorView(),
          ],
        ),
      ),
    );
  }
}
