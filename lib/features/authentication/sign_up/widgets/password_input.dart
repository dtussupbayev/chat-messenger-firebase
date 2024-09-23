import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/authentication/sign_up/logic/sign_up_controller.dart';
import 'package:flutter_application_1/generated/l10n.dart';

class PasswordInput extends StatelessWidget {
  final SignUpController signUpController;
  const PasswordInput({
    super.key,
    required this.signUpController,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.text,
      autocorrect: false,
      controller: signUpController.passwordTextEditingController,
      obscureText: signUpController.isHiddenPassword,
      validator: (value) => value != null && value.length < 6
          ? S.of(context).passwordFormValidatorText
          : null,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
          border: const OutlineInputBorder(),
          hintText: S.of(context).passwordFormHintText,
          suffix: InkWell(
            onTap: signUpController.togglePasswordView,
            child: Icon(
              signUpController.isHiddenPassword
                  ? Icons.visibility_off
                  : Icons.visibility,
            ),
          )),
    );
  }
}
