import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ttscord/server/application/usecases/get_servers.dart';
import 'package:ttscord/registration/presentation/widgets/add_contents_region.dart';
import 'package:ttscord/home/presentation/widgets/left_navigation.dart';
import 'package:ttscord/home/presentation/widgets/message_region.dart';
import 'package:ttscord/server/presentation/widgets/server_region.dart';

class HomeScreen extends HookWidget {
  final DestinationType initilaDestination;

  const HomeScreen({this.initilaDestination = messagesDestination, super.key});

  @override
  Widget build(BuildContext context) {
    final selectedIndex = useState<DestinationType>(initilaDestination);
    final servers = getServers();

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
        return MessageRegion();

      case AddContentsDestination():
        return AddContentsRegion();

      case ServerDestination(:final server):
        return ServerRegion(server: server);
    }
  }
}
