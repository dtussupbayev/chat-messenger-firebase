import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/snack_bar_service.dart';
import 'package:flutter_application_1/core/widgets/app_theme_switcher.dart';
import 'package:flutter_application_1/features/authentication/login/bloc/login_bloc.dart';
import 'package:flutter_application_1/features/authentication/login/widgets/login_form.dart';
import 'package:flutter_application_1/features/chats/screen/chats_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    super.key,
  });

  static const routeName = '/login';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool val = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          // title: Text(S.of(context).signInAppBarTitle),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 30.0),
              child: AppThemeSwitcher(),
            ),
          ],
        ),
        body: BlocListener<LoginBloc, LoginState>(
          listener: (context, state) {
            if (state.status == LoginStatus.failure) {
              SnackBarService.showSnackBar(
                context,
                state.errorMessage ?? '',
                error: true,
              );
            } else if (state.status == LoginStatus.success) {
              if (context.mounted) {
                while (context.canPop()) {
                  context.pop();
                }
                context.pushReplacement(ChatsScreen.routeName);
              }
            }
          },
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.textsms_rounded,
                  size: 96,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(height: 20),
                Text(
                  'RealTimeChat',
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                ),
                const SizedBox(height: 40),
                const LoginForm(),
                const SizedBox(height: 60),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
