import 'package:flutter_application_1/core/screens/splash_screen.dart';
import 'package:flutter_application_1/features/profile/screens/profile_screen.dart';
import 'package:flutter_application_1/features/authentication/login/screen/login_screen.dart';
import 'package:flutter_application_1/features/authentication/reset_password/screens/reset_password_screen.dart';
import 'package:flutter_application_1/features/authentication/sign_up/screens/sign_up_screen.dart';
import 'package:flutter_application_1/features/authentication/verify_email/screens/verify_email_screen.dart';
import 'package:flutter_application_1/features/chat/screens/chat_screen.dart';
import 'package:flutter_application_1/features/chats/screen/chats_screen.dart';
import 'package:flutter_application_1/features/settings/settings_controller.dart';
import 'package:flutter_application_1/features/settings/settings_screen.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: SplashScreen.routeName,
      builder: (context, state) => const SplashScreen(
      ),
    ),
    GoRoute(
      path: '/auth',
      name: LoginScreen.routeName,
      builder: (context, state) => const LoginScreen(),
      routes: [
        GoRoute(
          path: 'sign-up',
          name: SignUpScreen.routeName,
          builder: (context, state) => const SignUpScreen(),
        ),
        GoRoute(
          path: 'reset-password',
          name: ResetPasswordScreen.routeName,
          builder: (context, state) => const ResetPasswordScreen(),
        ),
      ],
    ),
    GoRoute(
      path: '/verify_email',
      name: VerifyEmailScreen.routeName,
      builder: (context, state) => const VerifyEmailScreen(),
    ),
    GoRoute(
      path: '/chats',
      name: ChatsScreen.routeName,
      builder: (context, state) => const ChatsScreen(),
      routes: [
        GoRoute(
          path: 'account',
          name: ProfileScreen.routeName,
          builder: (context, state) => const ProfileScreen(),
        ),
        GoRoute(
          name: 'settings',
          path: SettingsScreen.routeName,
          builder: (context, state) {
            final SettingsController settingsController =
                state.extra! as SettingsController;
            return SettingsScreen(controller: settingsController);
          },
        ),
        GoRoute(
          path: 'chat/:uid',
          name: ChatScreen.routeName,
          builder: (context, state) {
            return ChatScreen(
              uid: state.pathParameters['uid'] ?? '',
              firstName: state.uri.queryParameters['firstName'] ?? '',
              lastName: state.uri.queryParameters['lastName'] ?? '',
            );
          },
        ),
      ],
    ),
  ],
);
