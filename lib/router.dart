import 'package:go_router/go_router.dart';
import 'package:ttscord/editor/presentation/pages/editor_page.dart';
import 'package:ttscord/home/presentation/pages/main_page.dart';
import 'package:ttscord/registration/presentation/pages/register_page.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => MainPage()),
    GoRoute(
      path: '/register',
      builder: (context, state) {
        try {
          final key = state.uri.queryParameters.keys.singleWhere(
            (key) => ItemType.containsName(key),
          );

          final itemType = ItemType.values.byName(key);
          return RegisterPage(
            itemType: itemType,
            code: state.uri.queryParameters[key]!,
          );
        } on StateError catch (_) {
          return RegisterErrorPage();
        }
      },
    ),
    GoRoute(path: '/edit', builder: (context, state) => EditorPage()),
  ],
  onException: (context, state, router) => router.go("/"),
);
