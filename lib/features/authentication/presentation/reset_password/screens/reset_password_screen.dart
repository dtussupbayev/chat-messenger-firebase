import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:realtime_chat_app/core/di/get_it.dart';
import 'package:realtime_chat_app/core/utils/snack_bar_service.dart';
import 'package:realtime_chat_app/features/authentication/domain/use_cases/reset_password_use_case.dart';
import 'package:realtime_chat_app/features/authentication/presentation/login/screen/login_screen.dart';
import 'package:realtime_chat_app/features/authentication/presentation/reset_password/bloc/reset_password_bloc.dart';
import 'package:realtime_chat_app/features/authentication/presentation/reset_password/widgets/reset_password_form.dart';

import '../../../../../generated/l10n.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ResetPasswordBloc(
        resetPasswordUseCase: getIt.get<ResetPasswordUseCase>(),
      ),
      child: BlocListener<ResetPasswordBloc, ResetPasswordState>(
        listener: (context, state) {
          if (state.status == ResetPasswordStatus.failure) {
            SnackBarService.showSnackBar(
              context,
              state.errorMessage ?? 'Unknown Failure',
              isError: true,
            );
          } else if (state.status == ResetPasswordStatus.success) {
            SnackBarService.showSnackBar(
              context,
              S.of(context).successResetPassword,
              isError: false,
            );
            if (context.mounted) {
              while (context.canPop()) {
                context.pop();
              }
              context.pushReplacementNamed(LoginScreen.routeName);
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
