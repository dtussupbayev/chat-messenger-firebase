import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AccountController extends ChangeNotifier {
  final user = FirebaseAuth.instance.currentUser;

  Future<void> signOut(BuildContext context) async {
    final goRouter = GoRouter.of(context);

    await FirebaseAuth.instance.signOut();

    while (goRouter.canPop()) {
      goRouter.pop();
    }
    goRouter.pushReplacement('/');
  }

  Future<Map<String, dynamic>?> getUserInfo() async {
    User? user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      DocumentSnapshot<Map<String, dynamic>> snapshot = await FirebaseFirestore
          .instance
          .collection('users')
          .doc(user.uid)
          .get();

      return snapshot.data();
    }

    return null;
  }
}
