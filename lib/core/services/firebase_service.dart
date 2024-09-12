import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../features/chats/chats_screen.dart';
import '../../features/authentication/verify_email/verify_email_screen.dart';

class FirebaseService extends StatelessWidget {
  static const routeName = '/';
  const FirebaseService({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Scaffold(body: Center(child: Text('Что-то пошло не так!')));
        } else if (snapshot.hasData) {
          if (!snapshot.data!.emailVerified) {
            return const VerifyEmailScreen();
          }
          return const ChatsScreen();
        } else {
          return const ChatsScreen();
        }
      },
    );
  }
}
