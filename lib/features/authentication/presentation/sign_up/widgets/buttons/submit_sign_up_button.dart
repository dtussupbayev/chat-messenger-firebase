import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:realtimechat_uikit/realtimechat_uikit.dart';
import 'package:realtime_chat_app/features/authentication/presentation/sign_up/bloc/sign_up_bloc.dart';
import 'package:realtime_chat_app/l10n/app_localizations.dart';

class SubmitSignUpButton extends StatelessWidget {
  const SubmitSignUpButton({
    super.key,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
    required this.repeatPasswordController,
    required this.firstNameController,
    required this.lastNameController,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController repeatPasswordController;
  final TextEditingController firstNameController;
  final TextEditingController lastNameController;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) {
        return FilledButton(
          onPressed: () {
            if (passwordController.text != repeatPasswordController.text) {
              SnackBarService.showSnackBar(
                context,
                AppLocalizations.of(context).passwordsDifferent,
                type: SnackBarType.error,
              );
              return;
            }
            if (formKey.currentState!.validate()) {
              context.read<SignUpBloc>().add(
                SignUpSubmitted(
                  email: emailController.text,
                  password: passwordController.text,
                  firstName: firstNameController.text,
                  lastName: lastNameController.text,
                ),
              );
            }
          },
          child: Center(
            child: state.status == SignUpStatus.loading
                ? const AppButtonLoadingWidget()
                : Text(AppLocalizations.of(context).signUp),
          ),
        );
      },
    );
  }
}
