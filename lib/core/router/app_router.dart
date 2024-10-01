import 'package:flutter_application_1/core/services/firebase_service.dart';
import 'package:flutter_application_1/features/account/screens/account_screen.dart';
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
      builder: (context, state) => SplashScreen(
        currentPath: Uri.base.path,
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
      path: VerifyEmailScreen.routeName,
      name: VerifyEmailScreen.routeName,
      builder: (context, state) => const VerifyEmailScreen(),
    ),
    GoRoute(
      path: ChatsScreen.routeName,
      name: ChatsScreen.routeName,
      builder: (context, state) => const ChatsScreen(),
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
