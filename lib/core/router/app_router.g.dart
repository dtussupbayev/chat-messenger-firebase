// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
  $splashRoute,
  $welcomeRoute,
  $loginRoute,
  $verifyEmailRoute,
  $chatsRoute,
];

RouteBase get $splashRoute =>
    GoRouteData.$route(path: '/', factory: $SplashRoute._fromState);

mixin $SplashRoute on GoRouteData {
  static SplashRoute _fromState(GoRouterState state) => const SplashRoute();

  @override
  String get location => GoRouteData.$location('/');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $welcomeRoute =>
    GoRouteData.$route(path: '/welcome', factory: $WelcomeRoute._fromState);

mixin $WelcomeRoute on GoRouteData {
  static WelcomeRoute _fromState(GoRouterState state) => const WelcomeRoute();

  @override
  String get location => GoRouteData.$location('/welcome');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $loginRoute => GoRouteData.$route(
  path: '/auth',
  factory: $LoginRoute._fromState,
  routes: [
    GoRouteData.$route(path: 'sign-up', factory: $SignUpRoute._fromState),
    GoRouteData.$route(
      path: 'reset-password',
      factory: $ResetPasswordRoute._fromState,
    ),
  ],
);

mixin $LoginRoute on GoRouteData {
  static LoginRoute _fromState(GoRouterState state) => const LoginRoute();

  @override
  String get location => GoRouteData.$location('/auth');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $SignUpRoute on GoRouteData {
  static SignUpRoute _fromState(GoRouterState state) => const SignUpRoute();

  @override
  String get location => GoRouteData.$location('/auth/sign-up');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $ResetPasswordRoute on GoRouteData {
  static ResetPasswordRoute _fromState(GoRouterState state) =>
      const ResetPasswordRoute();

  @override
  String get location => GoRouteData.$location('/auth/reset-password');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $verifyEmailRoute => GoRouteData.$route(
  path: '/verify_email',
  factory: $VerifyEmailRoute._fromState,
);

mixin $VerifyEmailRoute on GoRouteData {
  static VerifyEmailRoute _fromState(GoRouterState state) =>
      const VerifyEmailRoute();

  @override
  String get location => GoRouteData.$location('/verify_email');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $chatsRoute => GoRouteData.$route(
  path: '/chats',
  factory: $ChatsRoute._fromState,
  routes: [
    GoRouteData.$route(path: 'account', factory: $ProfileRoute._fromState),
    GoRouteData.$route(path: 'settings', factory: $SettingsRoute._fromState),
    GoRouteData.$route(
      path: 'chat/:chatRoomId',
      factory: $ChatRoute._fromState,
    ),
  ],
);

mixin $ChatsRoute on GoRouteData {
  static ChatsRoute _fromState(GoRouterState state) => const ChatsRoute();

  @override
  String get location => GoRouteData.$location('/chats');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $ProfileRoute on GoRouteData {
  static ProfileRoute _fromState(GoRouterState state) => const ProfileRoute();

  @override
  String get location => GoRouteData.$location('/chats/account');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $SettingsRoute on GoRouteData {
  static SettingsRoute _fromState(GoRouterState state) => const SettingsRoute();

  @override
  String get location => GoRouteData.$location('/chats/settings');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $ChatRoute on GoRouteData {
  static ChatRoute _fromState(GoRouterState state) => ChatRoute(
    chatRoomId: state.pathParameters['chatRoomId'],
    firstName: state.uri.queryParameters['first-name'],
    lastName: state.uri.queryParameters['last-name'],
  );

  ChatRoute get _self => this as ChatRoute;

  @override
  String get location => GoRouteData.$location(
    '/chats/chat/${Uri.encodeComponent(_self.chatRoomId ?? '')}',
    queryParams: {
      if (_self.firstName != null) 'first-name': _self.firstName,
      if (_self.lastName != null) 'last-name': _self.lastName,
    },
  );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}
