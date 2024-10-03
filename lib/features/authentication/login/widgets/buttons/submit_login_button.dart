import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/authentication/login/bloc/login_bloc.dart';
import 'package:flutter_application_1/generated/l10n.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SubmitLoginButton extends StatelessWidget {
  const SubmitLoginButton({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.formKey,
  });
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return FilledButton(
          onPressed: () {
            if (formKey.currentState!.validate()) {
              context.read<LoginBloc>().add(
                    LoginSubmitted(
                      email: emailController.text,
                      password: passwordController.text,
                    ),
                  );
            }
          },
          child: Center(
            child: state.status == LoginStatus.loading
                ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircularProgressIndicator(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  )
                : Text(S.of(context).enter),
          ),
        );
      },
    );
  }
}
