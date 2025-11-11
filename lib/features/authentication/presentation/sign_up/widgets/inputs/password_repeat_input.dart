import 'package:flutter/material.dart';
import 'package:realtime_chat_app/l10n/app_localizations.dart';

class PasswordRepeatInput extends StatefulWidget {
  const PasswordRepeatInput({super.key, required this.repeatPasswordTextEditingController});

  final TextEditingController repeatPasswordTextEditingController;

  @override
  State<PasswordRepeatInput> createState() => _PasswordRepeatInputState();
}

class _PasswordRepeatInputState extends State<PasswordRepeatInput> {
  final ValueNotifier<bool> _isRepeatPasswordHidden = ValueNotifier<bool>(true);

  @override
  void dispose() {
    _isRepeatPasswordHidden.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: _isRepeatPasswordHidden,
      builder: (context, isHidden, child) {
        return TextFormField(
          autocorrect: false,
          controller: widget.repeatPasswordTextEditingController,
          obscureText: isHidden,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (value) => value != null && value.length < 6
              ? AppLocalizations.of(context).passwordFormValidatorText
              : null,
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.lock_clock_rounded),
            hintText: AppLocalizations.of(context).passwordRepeatFormHintText,
            suffix: InkWell(
              onTap: () => _isRepeatPasswordHidden.value = !isHidden,
              child: Icon(isHidden ? Icons.visibility_off : Icons.visibility),
            ),
          ),
        );
      },
    );
  }
}
