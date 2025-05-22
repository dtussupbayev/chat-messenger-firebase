import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:realtime_chat_app/core/widgets/app_button_loading_widget.dart';
import 'package:realtime_chat_app/features/authentication/presentation/reset_password/bloc/reset_password_bloc.dart';
import 'package:realtime_chat_app/generated/l10n.dart';

class SubmitResetPasswordButton extends StatelessWidget {
  const SubmitResetPasswordButton({
    super.key,
    required this.formKey,
    required this.emailController,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResetPasswordBloc, ResetPasswordState>(
      builder: (context, state) {
        return ElevatedButton(
          onPressed: () {
            if (formKey.currentState!.validate()) {
              context.read<ResetPasswordBloc>().add(
                ResetPasswordSubmitted(email: emailController.text),
              );
            }
          },
          child: Center(
            child: state.status == ResetPasswordStatus.loading
                ? const AppButtonLoadingWidget()
                : Text(S.of(context).resetPasswordButtonText),
          ),
        );
      },
    );
  }
}
