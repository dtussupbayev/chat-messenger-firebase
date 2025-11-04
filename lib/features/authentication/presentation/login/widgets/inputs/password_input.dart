import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:realtime_chat_app/features/authentication/presentation/login/bloc/login_bloc.dart';
import 'package:realtime_chat_app/generated/l10n.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({super.key, required this.passwordTextEditingController});

  final TextEditingController passwordTextEditingController;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        final bool isHidden = state.isPasswordHidden;
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
            prefixIcon: const Icon(Icons.lock),
            hintText: S.of(context).passwordFormHintText,
            suffix: InkWell(
              onTap: () =>
                  context.read<LoginBloc>().add(const TogglePasswordVisibility()),
              child: Icon(isHidden ? Icons.visibility_off : Icons.visibility),
            ),
          ),
        );
      },
    );
  }
}
