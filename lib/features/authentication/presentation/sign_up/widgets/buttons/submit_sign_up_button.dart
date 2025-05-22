import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:realtime_chat_app/core/utils/snack_bar_service.dart';
import 'package:realtime_chat_app/core/widgets/app_button_loading_widget.dart';
import 'package:realtime_chat_app/features/authentication/presentation/sign_up/bloc/sign_up_bloc.dart';
import 'package:realtime_chat_app/generated/l10n.dart';

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
                S.of(context).passwordsDifferent,
                isError: true,
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
                : Text(S.of(context).signUp),
          ),
        );
      },
    );
  }
}
