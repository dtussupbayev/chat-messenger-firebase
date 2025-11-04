import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:realtime_chat_app/features/authentication/presentation/sign_up/bloc/sign_up_bloc.dart';
import 'package:realtime_chat_app/generated/l10n.dart';

class PasswordRepeatInput extends StatelessWidget {
  const PasswordRepeatInput({
    super.key,
    required this.repeatPasswordTextEditingController,
  });

  final TextEditingController repeatPasswordTextEditingController;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) {
        return TextFormField(
          autocorrect: false,
          controller: repeatPasswordTextEditingController,
          obscureText: state.isRepeatPasswordHidden,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (value) => value != null && value.length < 6
              ? S.of(context).passwordFormValidatorText
              : null,
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.lock_clock_rounded),
            hintText: S.of(context).passwordRepeatFormHintText,
            suffix: InkWell(
              onTap: () {
                context.read<SignUpBloc>().add(
                  const ToggleRepeatPasswordVisibility(),
                );
              },
              child: Icon(
                state.isRepeatPasswordHidden
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
