import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ttscord/playback/domain/datamodel/actions.dart';
import 'package:ttscord/playback/domain/datamodel/branch_conditions.dart';
import 'package:ttscord/playback/domain/datamodel/references.dart';
import 'package:ttscord/playback/domain/datamodel/scenario.dart';
import 'package:ttscord/playback/domain/datamodel/triggers.dart';

class ScenarioEditorPage extends HookWidget {
  const ScenarioEditorPage({super.key});

  @override
  Widget build(BuildContext context) {
    final akari = CharacterReference("akari");

    final scenario = useState(
      Scenario(
        title: "akari00",
        author: "kokoNotes",
        description: "サンプルシナリオ",
        triggers: [JoinDmCallTrigger(akari)],
        flow: [Subroutine("morningScenario")],

        subroutines: {
          "morningScenario": [
            PlayAudio("moe_interrupt.flac"),
            HangUp(),
            WaitFor(Duration(minutes: 5), jitterPercent: 10),
            RingUp(akari),
            PlayAudio("akari.flac"),
            HangUp(),
          ],
        },
      ),
    );

    final jsonText = scenario.value.toJson();

    return Scaffold(
      appBar: AppBar(title: Text("Edit")),
      body: SingleChildScrollView(
        child: Expanded(
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
              _SubroutineErrorsView(scenario.value),
            ],
          ),
        ),
      ),
    );
  }
}

class _SubroutineErrorsView extends StatelessWidget {
  final Scenario scenario;
  const _SubroutineErrorsView(this.scenario);

  @override
  Widget build(BuildContext context) {
    try {
      scenario.validateSubRoutines();
      return Text("No missing subroutines");
    } on MissingSubroutinesException catch (e) {
      return Text(e.missing.toString());
    }
  }
}
