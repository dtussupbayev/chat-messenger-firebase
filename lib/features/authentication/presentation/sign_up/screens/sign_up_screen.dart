import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:realtime_chat_app/core/di/get_it.dart';
import 'package:realtimechat_uikit/realtimechat_uikit.dart';
import 'package:realtime_chat_app/features/authentication/domain/use_cases/sign_up_use_case.dart';
import 'package:realtime_chat_app/features/authentication/presentation/sign_up/bloc/sign_up_bloc.dart';
import 'package:realtime_chat_app/features/authentication/presentation/sign_up/widgets/sign_up_form.dart';
import 'package:realtime_chat_app/features/onboarding/welcome_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpBloc(signUpUseCase: getIt.get<SignUpUseCase>()),
      child: BlocListener<SignUpBloc, SignUpState>(
        listener: (context, state) {
          switch (state) {
            case SignUpFailure(errorMessage: final errorMessage):
              SnackBarService.showSnackBar(context, errorMessage, type: SnackBarType.error);
            default:
              break;
          }
        },
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          body: SafeArea(
            child: SizedBox(
              height: MediaQuery.sizeOf(context).height - MediaQuery.paddingOf(context).top,
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const GradientIcon(iconData: Icons.textsms_rounded, size: 96),
                      const SizedBox(height: 15),
                      Text(
                        'RealTimeChat',
                        style: context.textTheme.headlineLarge!.copyWith(
                          color: context.colorScheme.primary,
                        ),
                      ),
                      const SizedBox(height: 30),
                      const SignUpForm(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  static const routeName = '/sign_up';
}
