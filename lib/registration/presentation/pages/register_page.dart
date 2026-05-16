import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ttscord/core/presentation/widgets/long_bar_button.dart';

enum ItemType {
  scenario;

  static bool containsName(String name) => values.asNameMap().containsKey(name);
}

class RegisterPage extends StatelessWidget {
  final ItemType itemType;
  final String id;

  const RegisterPage({required this.itemType, required this.id, super.key});

  @override
  Widget build(BuildContext context) {
    return _RegisterPageBase(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // ServerIcon here,
          Text("作者"),
          Text("シナリオ名", style: Theme.of(context).textTheme.headlineLarge),
          LongBarButton(
            onPressed: () {},
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
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsetsGeometry.all(64),
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
    );
  }
}
