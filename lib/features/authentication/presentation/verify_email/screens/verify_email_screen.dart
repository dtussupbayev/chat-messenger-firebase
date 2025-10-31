import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:realtime_chat_app/core/utils/snack_bar_service.dart';
import 'package:realtime_chat_app/features/authentication/presentation/verify_email/bloc/verify_email_bloc.dart';
import 'package:realtime_chat_app/features/authentication/presentation/verify_email/widgets/cancel_verification_button.dart';
import 'package:realtime_chat_app/features/authentication/presentation/verify_email/widgets/resend_verification_email_button.dart';
import 'package:realtime_chat_app/features/chats/presentation/screen/chats_screen.dart';

import '../../../../../generated/l10n.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  static const routeName = '/verify_email';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => VerifyEmailBloc(),
      child: BlocListener<VerifyEmailBloc, VerifyEmailState>(
        listener: (context, state) {
          if (state.status == VerifyEmailStatus.failure) {
            SnackBarService.showSnackBar(
              context,
              state.errorMessage ?? 'Unknown Error',
              type: SnackBarType.error,
            );
          }
          if (state.status == VerifyEmailStatus.emailVerified) {
            context.go(ChatsScreen.routeName);
          }
        },
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
                    style: const TextStyle(fontSize: 20),
                  ),
                  const SizedBox(height: 20),
                  const ResendVerificationEmailButton(),
                  const SizedBox(height: 20),
                  const CancelVerificationButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
