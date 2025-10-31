import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:realtime_chat_app/features/chats/presentation/screen/chats_screen.dart';

import '../../../../../core/utils/snack_bar_service.dart';

class VerifyEmailController extends ChangeNotifier {
  bool isEmailVerified = false;
  bool canResendEmail = false;
  Timer? timer;
  Timer? checkAuthTimer;

  void initState(BuildContext context) {
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
      await FirebaseAuth.instance.currentUser?.reload();

      isEmailVerified = FirebaseAuth.instance.currentUser!.emailVerified;
      if (isEmailVerified) {
        if (!context.mounted) return;
        context.pushReplacementNamed(ChatsScreen.routeName);
      }
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
      await Future.delayed(const Duration(seconds: 20));

      // checkAuthTimer = Timer.periodic(const Duration(seconds: 5), (_) {
      //   context.read<AuthenticationBloc>().add(AuthenticationStatusCheck());
      // });
      canResendEmail = true;
      notifyListeners();
    } catch (e) {
      if (context.mounted) {
        SnackBarService.showSnackBar(context, '$e', type: SnackBarType.error);
      }
    }
  }

  @override
  void dispose() {
    timer?.cancel();
    checkAuthTimer?.cancel();
    super.dispose();
  }
}
