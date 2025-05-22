import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:realtime_chat_app/generated/l10n.dart';

class EmailInput extends StatelessWidget {
  const EmailInput({super.key, required this.emailTextEditingController});

  final TextEditingController emailTextEditingController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      autocorrect: false,
      controller: emailTextEditingController,
      validator: (email) => email != null && !EmailValidator.validate(email)
          ? S.of(context).emailFormValidatorText
          : null,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.mail),
        hintText: S.of(context).emailFormHintText,
      ),
    );
  }
}
