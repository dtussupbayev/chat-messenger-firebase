import 'package:go_router/go_router.dart';
import 'package:realtime_chat_app/core/screens/splash_screen.dart';
import 'package:realtime_chat_app/features/authentication/presentation/login/screen/login_screen.dart';
import 'package:realtime_chat_app/features/authentication/presentation/reset_password/screens/reset_password_screen.dart';
import 'package:realtime_chat_app/features/authentication/presentation/sign_up/screens/sign_up_screen.dart';
import 'package:realtime_chat_app/features/authentication/presentation/verify_email/screens/verify_email_screen.dart';
import 'package:realtime_chat_app/features/chat/presentation/screens/chat_screen.dart';
import 'package:realtime_chat_app/features/chats/presentation/screen/chats_screen.dart';
import 'package:realtime_chat_app/features/onboarding/welcome_screen.dart';
import 'package:realtime_chat_app/features/profile/presentation/screens/profile_screen.dart';
import 'package:realtime_chat_app/features/settings/screens/settings_screen.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: SplashScreen.routeName,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(path: '/welcome', builder: (context, state) => const WelcomeScreen()),
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
            return const SettingsScreen();
          },
        ),
        GoRoute(
          path: 'chat/:chatRoomId',
          name: ChatScreen.routeName,
          builder: (context, state) {
            return ChatScreen(
              chatRoomId: state.pathParameters['chatRoomId'] ?? '',
              firstName: state.uri.queryParameters['firstName'] ?? '',
              lastName: state.uri.queryParameters['lastName'] ?? '',
            );
          },
        ),
      ],
    ),
  ],
);
