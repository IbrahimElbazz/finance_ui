import 'package:finance_ui/core/routing/routes.dart';
import 'package:finance_ui/feature/forgot%20password/create_new_password_screen.dart';
import 'package:finance_ui/feature/forgot%20password/forgot_password_screen.dart';
import 'package:finance_ui/feature/forgot%20password/otp_verification_screen.dart';
import 'package:finance_ui/feature/forgot%20password/password_changed_screen.dart';
import 'package:finance_ui/feature/login/login_screen.dart';
import 'package:finance_ui/feature/register/register_screen.dart';
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
      GoRoute(
        path: AppRoutes.registerScreen,
        name: AppRoutes.registerScreen,
        builder: (context, state) => const RegisterScreen(),
      ),
      GoRoute(
        path: AppRoutes.forgotPasswordScreen,
        name: AppRoutes.forgotPasswordScreen,
        builder: (context, state) => const ForgotPasswordScreen(),
      ),
      GoRoute(
        path: AppRoutes.otpVerificationScreen,
        name: AppRoutes.otpVerificationScreen,
        builder: (context, state) => const OtpVerificationScreen(),
      ),

      GoRoute(
        path: AppRoutes.createNewPasswordScreen,
        name: AppRoutes.createNewPasswordScreen,
        builder: (context, state) => const CreateNewPasswordScreen(),
      ),
      GoRoute(
        path: AppRoutes.passwordChangedScreen,
        name: AppRoutes.passwordChangedScreen,
        builder: (context, state) => const PasswordChangedScreen(),
      ),
    ],
  );
}
