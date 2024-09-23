import 'package:flutter_application_1/features/authentication/verify_email/verify_email_screen.dart';
import 'package:flutter_application_1/features/settings/settings_controller.dart';
import 'package:go_router/go_router.dart';

import '../../features/account/account_screen.dart';
import '../../features/authentication/reset_password/reset_password_screen.dart';
import '../../features/authentication/sign_up/sign_up_screen.dart';
import '../../features/chat/screens/chat_screen.dart';
import '../../features/chats/screen/chats_screen.dart';
import '../../features/authentication/login/login_screen.dart';
import '../../features/settings/settings_screen.dart';
import '../services/firebase_service.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'home',
      builder: (context, state) => const FirebaseService(),
      routes: [
        GoRoute(
          path: AccountScreen.routeName,
          name: AccountScreen.routeName,
          builder: (context, state) => const AccountScreen(),
        ),
        GoRoute(
          name: SettingsScreen.routeName,
          path: SettingsScreen.routeName,
          builder: (context, state) {
            SettingsController settingsController =
                state.extra as SettingsController;
            return SettingsScreen(controller: settingsController);
          },
        ),
      ],
    ),
    GoRoute(
      path: '${ChatScreen.routeName}/:uid',
      name: ChatScreen.routeName,
      builder: (context, state) {
        return ChatScreen(
          uid: state.pathParameters['uid'] ?? '',
          firstName: state.uri.queryParameters['firstName'] ?? '',
          lastName: state.uri.queryParameters['lastName'] ?? '',
        );
      },
    ),
    GoRoute(
      path: LoginScreen.routeName,
      name: LoginScreen.routeName,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: SignUpScreen.routeName,
      name: SignUpScreen.routeName,
      builder: (context, state) => const SignUpScreen(),
    ),
    GoRoute(
      path: ResetPasswordScreen.routeName,
      name: ResetPasswordScreen.routeName,
      builder: (context, state) => const ResetPasswordScreen(),
    ),
    GoRoute(
      path: VerifyEmailScreen.routeName,
      name: VerifyEmailScreen.routeName,
      builder: (context, state) => const VerifyEmailScreen(),
    ),
    GoRoute(
      path: ChatsScreen.routeName,
      name: ChatsScreen.routeName,
      builder: (context, state) => const ChatsScreen(),
    ),
  ],
);
