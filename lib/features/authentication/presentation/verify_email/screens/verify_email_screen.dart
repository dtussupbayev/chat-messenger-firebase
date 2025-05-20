import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:realtime_chat_app/features/authentication/presentation/verify_email/widgets/cancel_verification_button.dart';
import 'package:realtime_chat_app/features/authentication/presentation/verify_email/widgets/resend_verification_email_button.dart';

import '../../../../../generated/l10n.dart';
import '../../../../chats/presentation/screen/chats_screen.dart';
import '../logic/verify_email_controller.dart';

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
      : ChangeNotifierProvider<VerifyEmailController>(
          create: (_) => verifyEmailController,
          child: Scaffold(
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
                    const ResendVerificationEmailButton(),
                    const SizedBox(height: 20),
                    CancelVerificationButton(
                      verifyEmailController: verifyEmailController,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
}
