import 'package:flutter_application_1/features/chats/chats_screen.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const ChatsScreen(),
  ),
  // GoRoute(
  //   path: 'settings',
  //   builder: (context, state) => SettingsView(controller: ,),
  // )
]);
