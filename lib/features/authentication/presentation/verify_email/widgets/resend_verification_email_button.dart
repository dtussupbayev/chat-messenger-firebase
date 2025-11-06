import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:realtime_chat_app/features/authentication/presentation/verify_email/bloc/verify_email_bloc.dart';
import 'package:realtime_chat_app/l10n/app_localizations.dart';

class ResendVerificationEmailButton extends StatelessWidget {
  const ResendVerificationEmailButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VerifyEmailBloc, VerifyEmailState>(
      builder: (context, state) {
        return ElevatedButton.icon(
          onPressed: state.canResendEmail
              ? () => context.read<VerifyEmailBloc>().add(const SendVerificationEmail())
              : null,
          icon: const Icon(Icons.email),
          label: Text(AppLocalizations.of(context).resend),
        );
      },
    );
  }
}
