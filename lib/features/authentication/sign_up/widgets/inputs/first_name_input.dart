import 'package:flutter/material.dart';
import 'package:flutter_application_1/generated/l10n.dart';

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
          ? 'Enter your first name'
          : RegExp(r'[!@#<>?":_`~;[\]\\|=+)(*&^%0-9-]').hasMatch(value)
              ? 'Enter a Valid Name'
              : null,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.person),
        hintText: S.of(context).firstNameFormHintText,
      ),
    );
  }
}
