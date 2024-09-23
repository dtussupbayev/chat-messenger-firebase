import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/snack_bar_service.dart';
import 'package:flutter_application_1/features/authentication/login/bloc/login_bloc.dart';
import 'package:flutter_application_1/features/authentication/login/widgets/login_form.dart';
import 'package:flutter_application_1/features/chats/screen/chats_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:flutter_application_1/generated/l10n.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    super.key,
  });

  static const routeName = '/login';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text(S.of(context).signInAppBarTitle),
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: BlocListener<LoginBloc, LoginState>(
            listener: (context, state) {
              if (state.status == LoginStatus.failure) {
                SnackBarService.showSnackBar(
                    context, state.errorMessage ?? '', true);
              } else if (state.status == LoginStatus.success) {
                if (context.mounted) {
                  while (context.canPop()) {
                    context.pop();
                  }
                  context.pushReplacement(ChatsScreen.routeName);
                }
              }
            },
            child: LoginForm(),
          ),
        ),
      ),
    );
  }
}
