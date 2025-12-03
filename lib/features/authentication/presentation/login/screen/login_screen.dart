import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:realtime_chat_app/core/di/get_it.dart';
import 'package:realtime_chat_app/core/router/app_router.dart';
import 'package:realtimechat_uikit/realtimechat_uikit.dart';
import 'package:realtime_chat_app/features/authentication/domain/repositories/auth_repository.dart';
import 'package:realtime_chat_app/features/authentication/presentation/login/bloc/login_bloc.dart';
import 'package:realtime_chat_app/features/authentication/presentation/login/widgets/login_form.dart';
import 'package:realtime_chat_app/features/onboarding/welcome_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  static const routeName = '/login';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(authRepository: getIt.get<IAuthRepository>()),
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          appBar: AppBar(backgroundColor: context.theme.scaffoldBackgroundColor),
          body: BlocListener<LoginBloc, LoginState>(
            listener: (context, state) {
              switch (state) {
                case LoginFailure(errorMessage: final errorMessage):
                  SnackBarService.showSnackBar(context, errorMessage, type: SnackBarType.error);
                case LoginSuccess():
                  if (context.mounted) {
                    while (context.canPop()) {
                      context.pop();
                    }
                    const ChatsRoute().pushReplacement(context);
                  }
                default:
                  break;
              }
            },
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const GradientIcon(iconData: Icons.textsms_rounded, size: 96),
                    const SizedBox(height: 20),
                    Text(
                      'RealTimeChat',
                      style: context.textTheme.headlineLarge!.copyWith(
                        color: context.colorScheme.primary,
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
