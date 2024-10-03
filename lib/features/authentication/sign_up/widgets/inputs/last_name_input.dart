import 'package:flutter/material.dart';
import 'package:flutter_application_1/generated/l10n.dart';

class LastNameInput extends StatelessWidget {
  const LastNameInput({
    super.key,
    required this.lastNameTextEditingController,
  });

  final TextEditingController lastNameTextEditingController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: lastNameTextEditingController,
      validator: (value) => value!.isEmpty
          ? 'Enter your second name'
          : RegExp(r'[!@#<>?":_`~;[\]\\|=+)(*&^%0-9-]').hasMatch(value)
              ? 'Enter a Valid Name'
              : null,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.person),
        hintText: S.of(context).lastNameFormHintText,
      ),
    );
  }
}
