import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../generated/l10n.dart';
import '../../../core/utils/snack_bar_service.dart';
import '../../chats/screen/chats_screen.dart';

class ResetPasswordController extends ChangeNotifier {
  final formKey = GlobalKey<FormState>();
  TextEditingController emailTextEditingController = TextEditingController();

  void disposeTextInputControllers() {
    emailTextEditingController.dispose();
  }

  Future<void> resetPassword(BuildContext context) async {
    final scaffoldMassager = ScaffoldMessenger.of(context);

    final isValid = formKey.currentState!.validate();
    if (!isValid) return;

    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(
          email: emailTextEditingController.text.trim());
    } on FirebaseAuthException catch (e) {
      if (context.mounted) {
        if (e.code == 'user-not-found') {
          SnackBarService.showSnackBar(
            context,
            S.of(context).userNotFoundText,
            true,
          );
          return;
        } else {
          SnackBarService.showSnackBar(
            context,
            S.of(context).undefinedError,
            true,
          );
          return;
        }
      }
    }

    if (context.mounted) {
      final snackBar = SnackBar(
        content: Text(S.of(context).successResetPassword),
        backgroundColor: Colors.green,
      );

      scaffoldMassager.showSnackBar(snackBar);
    }

    if (context.mounted) {
      while (context.canPop()) {
        context.pop();
      }
      context.pushReplacement(ChatsScreen.routeName);
    }
  }
}
