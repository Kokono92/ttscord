import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'home_screen.dart';

typedef NavigationGroup =
    ({
      NavigationDestination destination,
      PreferredSizeWidget? appBar,
      Widget? screen,
    });

class MainPage extends HookWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedIndex = useState(0);

    final navigationGroups = [
      buildHomeNavigation(),
      buildNotificationNavigation(),
      buildUserNavigation(),
    ];

    return Scaffold(
      appBar: navigationGroups[selectedIndex.value].appBar,
      body: Center(child: navigationGroups[selectedIndex.value].screen),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (newIndex) {
          selectedIndex.value = newIndex;
        },
        selectedIndex: selectedIndex.value,
        destinations: navigationGroups.map((elem) => elem.destination).toList(),
        backgroundColor: Theme.of(context).colorScheme.surfaceContainerHigh,
      ),
    );
  }
}

NavigationGroup buildHomeNavigation() {
  return (
    destination: NavigationDestination(
      selectedIcon: Icon(Icons.home),
      icon: Icon(Icons.home_outlined),
      label: 'ホーム',
    ),
    appBar: null,
    screen: HomeScreen(),
  );
}

NavigationGroup buildNotificationNavigation() {
  return (
    destination: NavigationDestination(
      selectedIcon: Icon(Icons.notifications),
      icon: Icon(Icons.notifications_outlined),
      label: '通知',
    ),
    appBar: AppBar(title: Text("通知")),
    screen: Text('通知'),
  );
}

NavigationGroup buildUserNavigation() {
  return (
    destination: NavigationDestination(
      selectedIcon: Icon(Icons.person),
      icon: Icon(Icons.person_outlined),
      label: 'あなた',
    ),
    appBar: null,
    screen: Text('あなた'),
  );
}
