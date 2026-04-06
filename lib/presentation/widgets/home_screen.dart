import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:ttscord/domain/datamodel/server.dart';
import 'package:ttscord/presentation/widgets/add_server_region.dart';
import 'package:ttscord/presentation/widgets/left_navigation.dart';
import 'package:ttscord/presentation/widgets/message_region.dart';
import 'package:ttscord/presentation/widgets/server_region.dart';

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
        return MessageRegion();

      case AddServerDestination():
        return AddServerRegion();

      case ServerDestination(:final server):
        return ServerRegion(server: server);
    }
  }
}
