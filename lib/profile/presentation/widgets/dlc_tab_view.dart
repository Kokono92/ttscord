import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:page_transition/page_transition.dart';
import 'package:ttscord/common/application/provider/scenario_sources_provider.dart';
import 'package:ttscord/home/presentation/pages/main_page.dart';
import 'package:ttscord/home/presentation/widgets/left_navigation.dart';

class DlcTabView extends ConsumerWidget {
  const DlcTabView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sources = ref.watch(scenarioSourcesProvider);
    debugPrint(sources.toString());

    return Column(
      children: [
        Expanded(
          child: sources.when(
            data: (sources) => ScenarioListView(sources),
            loading: () => CircularProgressIndicator(),
            error: (_, _) => Container(),
            skipError: true,
          ),
        ),
      ],
    );
  }
}

class ScenarioListView extends StatelessWidget {
  final ScenarioSources sources;

  const ScenarioListView(this.sources, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder:
          (_, index) =>
              index < sources.length
                  ? ScenarioTile(sources.elementAt(index))
                  : AddScenarioTile(),
      itemCount: sources.length + 1,
    );
  }
}

class ScenarioTile extends StatelessWidget {
  final Uri source;

  const ScenarioTile(this.source, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(title: Text(source.toString()));
  }
}

class AddScenarioTile extends StatelessWidget {
  const AddScenarioTile({super.key});

  @override
  Widget build(BuildContext context) => InkWell(
    onTap:
        () => Navigator.of(context).push(
          PageTransition(
            type: PageTransitionType.leftToRight,
            child: MainPage(homeInitialDestination: addContentsDestination),
          ),
        ),
    child: ListTile(title: Icon(Icons.add)),
  );
}
