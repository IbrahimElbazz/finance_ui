import 'package:finance_ui/core/routing/routes.dart';
import 'package:finance_ui/feature/login/login_screen.dart';
import 'package:finance_ui/feature/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static GoRouter router = GoRouter(
    initialLocation: AppRoutes.welcomeScreen,
    errorBuilder: (context, state) {
      return Scaffold(body: Center(child: Text('Page not found')));
    },

    routes: <RouteBase>[
      GoRoute(
        path: AppRoutes.welcomeScreen,
        name: AppRoutes.welcomeScreen,
        builder: (context, state) => const WelcomeScreen(),
      ),
      GoRoute(
        path: AppRoutes.loginScreen,
        name: AppRoutes.loginScreen,
        builder: (context, state) => const LoginScreen(),
      ),
    ],
  );
}
