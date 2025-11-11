import 'package:flutter/material.dart';
import 'package:realtime_chat_app/l10n/app_localizations.dart';

class PasswordInput extends StatefulWidget {
  const PasswordInput({super.key, required this.passwordTextEditingController});

  final TextEditingController passwordTextEditingController;

  @override
  State<PasswordInput> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  final ValueNotifier<bool> _isPasswordHidden = ValueNotifier<bool>(true);

  @override
  void dispose() {
    _isPasswordHidden.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: _isPasswordHidden,
      builder: (context, isHidden, child) {
        return TextFormField(
          keyboardType: TextInputType.text,
          autocorrect: false,
          controller: widget.passwordTextEditingController,
          obscureText: isHidden,
          validator: (value) => value != null && value.length < 6
              ? AppLocalizations.of(context).passwordFormValidatorText
              : null,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.lock),
            hintText: AppLocalizations.of(context).passwordFormHintText,
            suffix: InkWell(
              onTap: () => _isPasswordHidden.value = !isHidden,
              child: Icon(isHidden ? Icons.visibility_off : Icons.visibility),
            ),
          ),
        );
      },
    );
  }
}
