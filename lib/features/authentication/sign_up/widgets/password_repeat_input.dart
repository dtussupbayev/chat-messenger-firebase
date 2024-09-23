import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/authentication/sign_up/logic/sign_up_controller.dart';
import 'package:flutter_application_1/generated/l10n.dart';

class PasswordRepeatInput extends StatelessWidget {
  final SignUpController signUpController;
  const PasswordRepeatInput({
    super.key,
    required this.signUpController,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autocorrect: false,
      controller: signUpController.passwordRepeatTextEditingController,
      obscureText: signUpController.isHiddenPassword,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) => value != null && value.length < 6
          ? S.of(context).passwordFormValidatorText
          : null,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: S.of(context).passwordRepeatFormHintText,
        suffix: InkWell(
          onTap: signUpController.togglePasswordView,
          child: Icon(
            signUpController.isHiddenPassword
                ? Icons.visibility_off
                : Icons.visibility,
          ),
        ),
      ),
    );
  }
}
