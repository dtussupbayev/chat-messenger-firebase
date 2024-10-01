import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/authentication/sign_up/logic/sign_up_controller.dart';
import 'package:flutter_application_1/generated/l10n.dart';

class LastNameInput extends StatelessWidget {
  const LastNameInput({
    super.key,
    required this.signUpController,
  });
  final SignUpController signUpController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: signUpController.lastNameTextEditingController,
      validator: (value) => value!.isEmpty
          ? 'Enter your second name'
          : RegExp(r'[!@#<>?":_`~;[\]\\|=+)(*&^%0-9-]').hasMatch(value)
              ? 'Enter a Valid Name'
              : null,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: S.of(context).lastNameFormHintText,
      ),
    );
  }
}
