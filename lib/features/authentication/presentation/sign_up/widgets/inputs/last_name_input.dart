import 'package:flutter/material.dart';
import 'package:realtime_chat_app/generated/l10n.dart';

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
          ? S.of(context).enterYourLastName
          : RegExp(r'[!@#<>?":_`~;[\]\\|=+)(*&^%0-9-]').hasMatch(value)
              ? S.of(context).enterAValidLastName
              : null,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.person),
        hintText: S.of(context).lastNameFormHintText,
      ),
    );
  }
}
