import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/authentication/login/bloc/login_bloc.dart';
import 'package:flutter_application_1/generated/l10n.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PasswordFormField extends StatelessWidget {
  final TextEditingController passwordTextEditingController;

  const PasswordFormField({
    super.key,
    required this.passwordTextEditingController,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        bool isHidden = state.isPasswordHidden;
        return TextFormField(
          keyboardType: TextInputType.text,
          autocorrect: false,
          controller: passwordTextEditingController,
          obscureText: isHidden,
          validator: (value) => value != null && value.length < 6
              ? S.of(context).passwordFormValidatorText
              : null,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: InputDecoration(
              border: const OutlineInputBorder(),
              hintText: S.of(context).passwordFormHintText,
              suffix: InkWell(
                onTap: () =>
                    context.read<LoginBloc>().add(TogglePasswordVisibility()),
                child: Icon(
                  isHidden ? Icons.visibility_off : Icons.visibility,
                ),
              )),
        );
      },
    );
  }
}
