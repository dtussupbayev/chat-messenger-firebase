import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/authentication/reset_password/widgets/reset_form.dart';
import 'package:provider/provider.dart';

import '../../../../generated/l10n.dart';
import '../logic/reset_password_controller.dart';

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
              return ResetForm(
                resetPasswordController: resetPasswordController,
              );
            },
          ),
        ),
      ),
    );
  }
}
