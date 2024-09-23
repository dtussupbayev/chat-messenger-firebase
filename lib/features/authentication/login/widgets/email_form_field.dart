import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/generated/l10n.dart';

class EmailFormField extends StatelessWidget {
  final TextEditingController emailTextEditingController;

  const EmailFormField({
    super.key,
    required this.emailTextEditingController,
  });

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
        border: const OutlineInputBorder(),
        hintText: S.of(context).emailFormHintText,
      ),
    );
  }
}
