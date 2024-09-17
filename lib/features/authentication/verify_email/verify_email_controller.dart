import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/utils/snack_bar_service.dart';

class VerifyEmailController extends ChangeNotifier {
  bool isEmailVerified = false;
  bool canResendEmail = false;
  Timer? timer;

  void initState(context) {
    isEmailVerified = FirebaseAuth.instance.currentUser!.emailVerified;

    if (!isEmailVerified) {
      sendVerificationEmail(context);

      timer = Timer.periodic(
        const Duration(seconds: 5),
        (_) => checkEmailVerified(context),
      );
    }
  }

  Future<void> checkEmailVerified(BuildContext context) async {
    try {
      FirebaseAuth.instance.currentUser?.reload();

      isEmailVerified = FirebaseAuth.instance.currentUser!.emailVerified;
      notifyListeners();

      if (isEmailVerified) timer?.cancel();
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        await FirebaseAuth.instance.signOut();

        if (context.mounted) {
          context.pushReplacement('/');
        }
      }
    }
  }

  Future<void> sendVerificationEmail(BuildContext context) async {
    try {
      final user = FirebaseAuth.instance.currentUser!;
      await user.sendEmailVerification();

      canResendEmail = false;
      notifyListeners();
      await Future.delayed(const Duration(seconds: 10));

      canResendEmail = true;
      notifyListeners();
    } catch (e) {
      if (context.mounted) {
        SnackBarService.showSnackBar(
          context,
          '$e',
          //'Неизвестная ошибка! Попробуйте еще раз или обратитесь в поддержку.',
          true,
        );
      }
    }
  }
}
