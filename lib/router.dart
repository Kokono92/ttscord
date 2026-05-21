import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:ttscord/core/presentation/datamodel/conversation_target.dart';
import 'package:ttscord/editor/presentation/pages/editor_page.dart';
import 'package:ttscord/home/presentation/pages/main_page.dart';
import 'package:ttscord/registration/presentation/pages/register_page.dart';
import 'package:ttscord/voice_call/presentation/pages/voice_call_page.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => MainPage()),

    // Public API
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

    // Internals
    // TODO: URLからは叩けないようにする
    GoRoute(
      path: "/call",
      pageBuilder:
          (context, state) => CustomTransitionPage(
            child: VoiceCallPage(state.extra as ConversationTarget),
            transitionsBuilder: ((
              context,
              animation,
              secondaryAnimation,
              child,
            ) {
              return PageTransition(
                child: child,
                type: PageTransitionType.bottomToTop,
                alignment: Alignment.center,
              ).buildTransitions(context, animation, secondaryAnimation, child);
            }),
          ),
    ),
  ],
  onException: (context, state, router) => router.go("/"),
  observers: [RouteObserver<ModalRoute<void>>()],
);
