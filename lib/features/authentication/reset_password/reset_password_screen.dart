import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../generated/l10n.dart';
import 'reset_password_controller.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();

  static const routeName = '/reset_password';
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final resetPasswordController = ResetPasswordController();
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => resetPasswordController,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text(S.of(context).resetPasswordScreenAppBarTitle),
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Consumer<ResetPasswordController>(
            builder: (
              context,
              resetPasswordController,
              child,
            ) {
              return Form(
                key: resetPasswordController.formKey,
                child: Column(
                  children: [
                    EmailFormField(resetPasswordController: resetPasswordController),
                    const SizedBox(height: 30),
                    const SizedBox(height: 30),
                    ResetPasswordButton(
                      resetPasswordController: resetPasswordController,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class EmailFormField extends StatelessWidget {
  final ResetPasswordController resetPasswordController;
  const EmailFormField({
    super.key,
    required this.resetPasswordController,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      autocorrect: false,
      controller: resetPasswordController.emailTextEditingController,
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

class ResetPasswordButton extends StatelessWidget {
  final ResetPasswordController resetPasswordController;

  const ResetPasswordButton({
    super.key,
    required this.resetPasswordController,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => resetPasswordController.resetPassword(context),
      child: Center(child: Text(S.of(context).resetPasswordButtonText)),
    );
  }
}
