import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:realtime_chat_app/core/navigation.dart';
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

part 'app_router.g.dart';

@TypedGoRoute<SplashRoute>(path: '/')
class SplashRoute extends GoRouteData with $SplashRoute {
  const SplashRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const SplashScreen();
}

@TypedGoRoute<WelcomeRoute>(path: '/welcome')
class WelcomeRoute extends GoRouteData with $WelcomeRoute {
  const WelcomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const WelcomeScreen();
}

@TypedGoRoute<LoginRoute>(
  path: '/auth',
  routes: [
    TypedGoRoute<SignUpRoute>(path: 'sign-up'),
    TypedGoRoute<ResetPasswordRoute>(path: 'reset-password'),
  ],
)
class LoginRoute extends GoRouteData with $LoginRoute {
  const LoginRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const LoginScreen();
}

class SignUpRoute extends GoRouteData with $SignUpRoute {
  const SignUpRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const SignUpScreen();
}

class ResetPasswordRoute extends GoRouteData with $ResetPasswordRoute {
  const ResetPasswordRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const ResetPasswordScreen();
}

@TypedGoRoute<VerifyEmailRoute>(path: '/verify_email')
class VerifyEmailRoute extends GoRouteData with $VerifyEmailRoute {
  const VerifyEmailRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const VerifyEmailScreen();
}

@TypedGoRoute<ChatsRoute>(
  path: '/chats',
  routes: [
    TypedGoRoute<ProfileRoute>(path: 'account'),
    TypedGoRoute<SettingsRoute>(path: 'settings'),
    TypedGoRoute<ChatRoute>(path: 'chat/:chatRoomId'),
  ],
)
class ChatsRoute extends GoRouteData with $ChatsRoute {
  const ChatsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const ChatsScreen();
}

class ProfileRoute extends GoRouteData with $ProfileRoute {
  const ProfileRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const ProfileScreen();
}

class SettingsRoute extends GoRouteData with $SettingsRoute {
  const SettingsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const SettingsScreen();
}

class ChatRoute extends GoRouteData with $ChatRoute {
  const ChatRoute({required this.chatRoomId, this.firstName, this.lastName});

  final String chatRoomId;
  final String? firstName;
  final String? lastName;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      ChatScreen(chatRoomId: chatRoomId, firstName: firstName ?? '', lastName: lastName ?? '');
}

final router = GoRouter(navigatorKey: navigatorKey, initialLocation: '/', routes: $appRoutes);
