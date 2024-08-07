import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';
import '../../../services/snack_bar_service.dart';
import '../../chats/chats_screen.dart';

class LoginController extends ChangeNotifier {
  bool isHiddenPassword = true;
  final formKey = GlobalKey<FormState>();

  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  void disposeTextInputControllers() {
    emailTextEditingController.dispose();
    passwordTextEditingController.dispose();
  }

  togglePasswordView() {
    isHiddenPassword = !isHiddenPassword;

    notifyListeners();
  }

  Future<void> login(BuildContext context) async {
    final isValid = formKey.currentState!.validate();

    if (!isValid) return;

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailTextEditingController.text.trim(),
        password: passwordTextEditingController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      if (context.mounted) {
        if (e.code == 'invalid-credential' || e.code == 'wrong-password') {
          SnackBarService.showSnackBar(
            context,
            S.of(context).wrongEmailOrPasswordSnackBar,
            true,
          );
        } else {
          SnackBarService.showSnackBar(
            context,
            S.of(context).undefinedError,
            true,
          );
        }
        return;
      }
    }

    if (context.mounted) {
      Navigator.pushNamedAndRemoveUntil(context, ChatsScreen.routeName, (route) => false);
    }
  }
}