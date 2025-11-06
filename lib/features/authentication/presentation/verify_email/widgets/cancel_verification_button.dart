import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:realtime_chat_app/features/authentication/presentation/verify_email/bloc/verify_email_bloc.dart';
import 'package:realtime_chat_app/l10n/app_localizations.dart';

class CancelVerificationButton extends StatelessWidget {
  const CancelVerificationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => context.read<VerifyEmailBloc>().add(const CancelVerification()),
      child: Text(AppLocalizations.of(context).cancel, style: const TextStyle()),
    );
  }
}
