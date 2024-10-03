import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/snack_bar_service.dart';
import 'package:flutter_application_1/features/authentication/reset_password/bloc/reset_password_bloc.dart';
import 'package:flutter_application_1/features/authentication/reset_password/widgets/reset_password_form.dart';
import 'package:flutter_application_1/features/chats/screen/chats_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../generated/l10n.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ResetPasswordBloc(),
      child: BlocListener<ResetPasswordBloc, ResetPasswordState>(
        listener: (context, state) {
          if (state.status == ResetPasswordStatus.failure) {
            SnackBarService.showSnackBar(
              context,
              state.errorMessage ?? 'Unknown Failure',
              error: true,
            );
          } else if (state.status == ResetPasswordStatus.success) {
            SnackBarService.showSnackBar(
              context,
              S.of(context).successResetPassword,
              error: false,
            );
            if (context.mounted) {
              while (context.canPop()) {
                context.pop();
              }
              context.pushReplacementNamed(ChatsScreen.routeName);
            }
          }
        },
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            title: Text(S.of(context).resetPasswordScreenAppBarTitle),
          ),
          body: const Padding(
            padding: EdgeInsets.all(30.0),
            child: ResetPasswordForm(),
          ),
        ),
      ),
    );
  }

  static const routeName = '/reset_password';
}
