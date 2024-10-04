import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/widgets/app_button_loading_widget.dart';
import 'package:flutter_application_1/features/authentication/reset_password/bloc/reset_password_bloc.dart';
import 'package:flutter_application_1/generated/l10n.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                    ResetPasswordSubmitted(
                      email: emailController.text,
                    ),
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
