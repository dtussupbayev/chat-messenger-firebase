import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/authentication/login/bloc/login_bloc.dart';
import 'package:flutter_application_1/generated/l10n.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginButton extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final GlobalKey<FormState> formKey;

  const LoginButton({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.formKey,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return ElevatedButton(
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
          child: state.status == LoginStatus.loading
              ? const Center(child: CircularProgressIndicator())
              : Center(child: Text(S.of(context).enter)),
        );
      },
    );
  }
}
