import 'package:go_router/go_router.dart';
import 'package:ttscord/uncategorized/presentation/pages/main_page.dart';
import 'package:ttscord/uncategorized/presentation/pages/resgister_page.dart';

final router = GoRouter(
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
            id: state.uri.queryParameters[key]!,
          );
        } catch (e) {
          return RegisterErrorPage();
        }
      },
    ),
  ],
  onException: (context, state, router) => router.go("/"),
);
