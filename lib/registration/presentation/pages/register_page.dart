import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:page_transition/page_transition.dart';
import 'package:ttscord/core/application/provider/scenario_provider.dart';
import 'package:ttscord/core/application/provider/scenario_sources_provider.dart';
import 'package:ttscord/core/domain/datamodel/scenario.dart';
import 'package:ttscord/core/presentation/widgets/long_bar_button.dart';
import 'package:ttscord/registration/application/providers/default_origin_provider.dart';
import 'package:ttscord/registration/application/usecases/resolve_code.dart';

enum ItemType {
  scenario;

  static bool containsName(String name) => values.asNameMap().containsKey(name);
}

class RegisterPage extends ConsumerWidget {
  final ItemType itemType;
  final String code;

  const RegisterPage({required this.itemType, required this.code, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (itemType != ItemType.scenario) fallback(context);

    final scenarioSource = resolveCode(code, ref.read(defaultOriginProvider));
    if (scenarioSource == null) fallback(context);

    final scenario =
        ref.watch(scenarioProvider(scenarioSource!)).value?.content;

    return _RegisterPageBase(
      child: Column(
        spacing: 8,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // ServerIcon here,
          Text("Author: ${scenario?.author ?? ""}"),
          Text(
            scenario?.title ?? "",
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          SizedBox(height: 32),
          LongBarButton(
            onPressed:
                () => () async {
                  ref
                      .read(scenarioSourcesProvider.notifier)
                      .add(scenarioSource);

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("シナリオが追加されました"),
                      duration: Duration(seconds: 5),
                    ),
                  );
                  context.go('/');
                }(),

            iconData: null,
            text: "シナリオを登録する",
            style: FilledButton.styleFrom(),
          ),
          LongBarButton(
            onPressed: () => context.go('/'),
            iconData: null,
            text: "やめておく",
          ),
        ],
      ),
    );
  }

  void fallback(BuildContext context) {
    Navigator.of(context).pushReplacement(
      PageRouteBuilder(pageBuilder: (_, _, _) => RegisterErrorPage()),
    );
  }

  Future<void> register(BuildContext context, Function action) async {
    await action();
    if (context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("シナリオが追加されました"), duration: Duration(seconds: 5)),
      );
    }
  }
}

class RegisterErrorPage extends StatelessWidget {
  const RegisterErrorPage({super.key});

  @override
  Widget build(BuildContext context) => _RegisterPageBase(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(Icons.link_off, size: 64),
        Text("リンクが無効です", style: Theme.of(context).textTheme.headlineLarge),
        Text("コードの発行元にお問い合わせください"),
        FilledButton(onPressed: () => context.go('/'), child: Text("了解")),
      ],
    ),
  );
}

class _RegisterPageBase extends StatelessWidget {
  final Widget child;

  const _RegisterPageBase({required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surfaceContainerLowest,
      body: Center(
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsetsGeometry.all(32),
          constraints: BoxConstraints(maxWidth: 560),
          child: AspectRatio(
            aspectRatio: 1.0,
            child: Container(
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Theme.of(context).colorScheme.surfaceContainer,
              ),
              child: Padding(padding: EdgeInsetsGeometry.all(32), child: child),
            ),
          ),
        ),
      ),
    );
  }
}
