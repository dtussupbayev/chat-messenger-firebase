import 'package:flutter/material.dart';
import 'package:realtime_chat_app/features/onboarding/welcome_screen.dart';
import 'package:realtime_chat_app/core/service_locator/service_locator.dart';
import 'package:realtime_chat_app/core/utils/snack_bar_service.dart';
import 'package:realtime_chat_app/core/widgets/app_theme_switcher.dart';
import 'package:realtime_chat_app/features/authentication/domain/use_cases/login_use_case.dart';
import 'package:realtime_chat_app/features/authentication/presentation/login/bloc/login_bloc.dart';
import 'package:realtime_chat_app/features/authentication/presentation/login/widgets/login_form.dart';
import 'package:realtime_chat_app/features/chats/screen/chats_screen.dart';
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
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(
        loginUseCase: serviceLocator.get<LoginUseCase>(),
      ),
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          resizeToAvoidBottomInset: true,
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
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const GradientIcon(
                      iconData: Icons.textsms_rounded,
                      size: 96,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'RealTimeChat',
                      style:
                          Theme.of(context).textTheme.headlineLarge!.copyWith(
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
        ),
      ),
    );
  }
}
