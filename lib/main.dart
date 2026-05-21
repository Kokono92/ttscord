import 'package:flutter/material.dart';
import 'package:ttscord/core/presentation/widgets/app_events_listener.dart';
import 'package:ttscord/router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

void main() {
  usePathUrlStrategy();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: AppEventsListener(
        child: MaterialApp.router(
          routerConfig: router,
          themeMode: ThemeMode.dark,
          darkTheme: ThemeData(
            useMaterial3: true,
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.blue,
              brightness: Brightness.dark,
              primary: Colors.indigoAccent,
              onPrimary: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
