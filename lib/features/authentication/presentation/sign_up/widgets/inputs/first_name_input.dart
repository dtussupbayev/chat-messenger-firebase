import 'package:flutter/material.dart';
import 'package:realtime_chat_app/l10n/app_localizations.dart';

class FirstNameInput extends StatelessWidget {
  const FirstNameInput({super.key, required this.firstNameTextEditingController});

  final TextEditingController firstNameTextEditingController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: firstNameTextEditingController,
      validator: (value) => value!.isEmpty
          ? AppLocalizations.of(context).enterYourFirstName
          : RegExp(r'[!@#<>?":_`~;[\]\\|=+)(*&^%0-9-]').hasMatch(value)
          ? AppLocalizations.of(context).enterAValidName
          : null,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.person),
        hintText: AppLocalizations.of(context).firstNameFormHintText,
      ),
    );
  }
}
