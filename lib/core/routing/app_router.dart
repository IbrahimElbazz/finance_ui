import 'package:finance_ui/core/routing/routes.dart';
import 'package:finance_ui/feature/login/login_screen.dart';
import 'package:finance_ui/feature/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    errorBuilder: (context, state) {
      return Scaffold(body: Center(child: Text('not found page')));
    },
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        name: AppRoutes.welcomeScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const WelcomeScreen();
        },
      ),
      GoRoute(
        path: AppRoutes.loginScreen,
        name: AppRoutes.loginScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const LoginScreen();
        },
      ),
    ],
  );
}
