import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:realtime_chat_app/l10n/app_localizations.dart';

class EmailFormField extends StatelessWidget {
  const EmailFormField({super.key, required this.emailController});

  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      autocorrect: false,
      controller: emailController,
      validator: (email) => email != null && !EmailValidator.validate(email)
          ? AppLocalizations.of(context).emailFormValidatorText
          : null,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: AppLocalizations.of(context).emailFormHintText,
      ),
    );
  }
}
