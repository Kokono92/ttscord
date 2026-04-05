import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:ttscord/presentation/widgets/left_navigation.dart';

class HomeScreen extends HookWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedIndex = useState<DestinationType>(messagesDestination);
    final servers = [(name: 'Sample server', id: 1, iconPath: null)];

    return Row(
      children: [
        LeftNavigation(
          selectedDestination: selectedIndex.value,
          onSelectionChanged: (newIndex) {
            selectedIndex.value = newIndex;
          },
          servers: servers,
        ),

        _buildContent(context, selectedIndex.value),
      ],
    );
  }

  Widget _buildContent(BuildContext context, DestinationType dest) {
    switch (dest) {
      case MessagesDestination():
        return buildMessageRegion(context);

      case AddServerDestination():
        return ContentRegion(title: "サーバー");

      case ServerDestination(:final server):
        return ContentRegion(title: server.name);
    }
  }
}

Widget buildMessageRegion(BuildContext context) => ContentRegion(
  title: "メッセージ",
  child: Column(
    children: [
      FilledButton(
        onPressed: () {},
        style: FilledButton.styleFrom(
          backgroundColor:
              Theme.of(context).colorScheme.surfaceContainerHighest,
          foregroundColor: Colors.grey,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Icon(PhosphorIconsFill.userPlus), Text("フレンドを追加")],
        ),
      ),
    ],
  ),
);

class ContentRegion extends StatelessWidget {
  final String title;
  final Widget? child;

  const ContentRegion({required this.title, this.child, super.key});

  @override
  Widget build(BuildContext context) => Expanded(
    child: Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(40)),
        color: Theme.of(context).colorScheme.surfaceContainer,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: Theme.of(context).textTheme.headlineMedium),
          child ?? Container(),
        ],
      ),
    ),
  );
}
