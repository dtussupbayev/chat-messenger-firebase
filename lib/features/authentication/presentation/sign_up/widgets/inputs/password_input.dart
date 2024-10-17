import 'package:flutter/material.dart';
import 'package:realtime_chat_app/features/authentication/presentation/sign_up/bloc/sign_up_bloc.dart';
import 'package:realtime_chat_app/generated/l10n.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({
    super.key,
    required this.passwordTextEditingController,
  });

  final TextEditingController passwordTextEditingController;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) {
        return TextFormField(
          keyboardType: TextInputType.text,
          autocorrect: false,
          controller: passwordTextEditingController,
          obscureText: state.isPasswordHidden,
          validator: (value) => value != null && value.length < 6
              ? S.of(context).passwordFormValidatorText
              : null,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.lock),
            hintText: S.of(context).passwordFormHintText,
            suffix: InkWell(
              onTap: () {
                context.read<SignUpBloc>().add(TogglePasswordVisibility());
              },
              child: Icon(
                state.isPasswordHidden
                    ? Icons.visibility_off
                    : Icons.visibility,
              ),
            ),
          ),
        );
      },
    );
  }
}
