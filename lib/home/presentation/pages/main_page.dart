import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ttscord/profile/presentation/widgets/profile_screen.dart';

import '../widgets/home_screen.dart';
import '../widgets/left_navigation.dart';

typedef NavigationGroup =
    ({
      NavigationDestination destination,
      PreferredSizeWidget? appBar,
      Widget? screen,
    });

class MainPage extends HookWidget {
  final DestinationType? homeInitialDestination;

  const MainPage({this.homeInitialDestination, super.key});

  @override
  Widget build(BuildContext context) {
    final selectedIndex = useState(0);

    final navigationGroups = [
      buildHomeNavigation(homeInitialDestination),
      buildNotificationNavigation(),
      buildProfileNavigation(),
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

NavigationGroup buildHomeNavigation([DestinationType? initialDestination]) {
  return (
    destination: NavigationDestination(
      selectedIcon: Icon(Icons.home),
      icon: Icon(Icons.home_outlined),
      label: 'ホーム',
    ),
    appBar: null,
    screen: HomeScreen(
      initilaDestination: initialDestination ?? messagesDestination,
    ),
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

NavigationGroup buildProfileNavigation() {
  return (
    destination: NavigationDestination(
      selectedIcon: Icon(Icons.person),
      icon: Icon(Icons.person_outlined),
      label: 'あなた',
    ),
    appBar: null,
    screen: ProfileScreen(),
  );
}
