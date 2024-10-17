import 'package:flutter/material.dart';
import 'package:realtime_chat_app/generated/l10n.dart';

class FirstNameInput extends StatelessWidget {
  const FirstNameInput({
    super.key,
    required this.firstNameTextEditingController,
  });

  final TextEditingController firstNameTextEditingController;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: firstNameTextEditingController,
      validator: (value) => value!.isEmpty
          ? S.of(context).enterYourFirstName
          : RegExp(r'[!@#<>?":_`~;[\]\\|=+)(*&^%0-9-]').hasMatch(value)
              ? S.of(context).enterAValidName
              : null,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.person),
        hintText: S.of(context).firstNameFormHintText,
      ),
    );
  }
}
