import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';
import '../../chats/screen/chats_screen.dart';
import 'verify_email_controller.dart';

class VerifyEmailScreen extends StatefulWidget {
  const VerifyEmailScreen({super.key});

  @override
  State<VerifyEmailScreen> createState() => _VerifyEmailScreenState();

  static const routeName = '/verify_email';
}

class _VerifyEmailScreenState extends State<VerifyEmailScreen> {
  final VerifyEmailController verifyEmailController = VerifyEmailController();

  @override
  void initState() {
    super.initState();

    verifyEmailController.initState(context);
  }

  @override
  void dispose() {
    verifyEmailController.timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => verifyEmailController.isEmailVerified
      ? const ChatsScreen()
      : Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            title: Text(S.of(context).verifyEmailScreenAppBarTitle),
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    S.of(context).verificationEmailResended,
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton.icon(
                    onPressed: verifyEmailController.canResendEmail
                        ? () => verifyEmailController.sendVerificationEmail(context)
                        : null,
                    icon: const Icon(Icons.email),
                    label: Text(S.of(context).resend),
                  ),
                  const SizedBox(height: 20),
                  TextButton(
                    onPressed: () async {
                      verifyEmailController.timer?.cancel();
                      await FirebaseAuth.instance.signOut();
                    },
                    child: Text(
                      S.of(context).cancel,
                      style: const TextStyle(),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
}
