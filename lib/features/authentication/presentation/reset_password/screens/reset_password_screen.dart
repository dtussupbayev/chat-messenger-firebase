import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:realtime_chat_app/core/di/get_it.dart';
import 'package:realtime_chat_app/core/router/app_router.dart';
import 'package:realtimechat_uikit/realtimechat_uikit.dart';
import 'package:realtime_chat_app/features/authentication/domain/use_cases/reset_password_use_case.dart';
import 'package:realtime_chat_app/features/authentication/presentation/reset_password/bloc/reset_password_bloc.dart';
import 'package:realtime_chat_app/features/authentication/presentation/reset_password/widgets/reset_password_form.dart';

import '../../../../../l10n/app_localizations.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ResetPasswordBloc(resetPasswordUseCase: getIt.get<ResetPasswordUseCase>()),
      child: BlocListener<ResetPasswordBloc, ResetPasswordState>(
        listener: (context, state) {
          switch (state) {
            case ResetPasswordFailure(errorMessage: final errorMessage):
              SnackBarService.showSnackBar(context, errorMessage, type: SnackBarType.error);
            case ResetPasswordSuccess():
              SnackBarService.showSnackBar(
                context,
                AppLocalizations.of(context).successResetPassword,
                type: SnackBarType.success,
              );
              if (context.mounted) {
                while (context.canPop()) {
                  context.pop();
                }
                const LoginRoute().pushReplacement(context);
              }
            default:
              break;
          }
        },
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(title: Text(AppLocalizations.of(context).resetPasswordScreenAppBarTitle)),
          body: const Padding(padding: EdgeInsets.all(30.0), child: ResetPasswordForm()),
        ),
      ),
    );
  }

  static const routeName = '/reset_password';
}
