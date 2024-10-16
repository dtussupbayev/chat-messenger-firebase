import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/onboarding/welcome_screen.dart';
import 'package:flutter_application_1/core/service_locator/service_locator.dart';
import 'package:flutter_application_1/core/utils/snack_bar_service.dart';
import 'package:flutter_application_1/features/authentication/domain/use_cases/sign_up_use_case.dart';
import 'package:flutter_application_1/features/authentication/presentation/sign_up/bloc/sign_up_bloc.dart';
import 'package:flutter_application_1/features/authentication/presentation/sign_up/widgets/sign_up_form.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          SignUpBloc(signUpUseCase: serviceLocator.get<SignUpUseCase>()),
      child: BlocListener<SignUpBloc, SignUpState>(
        listener: (context, state) {
          if (state.status == SignUpStatus.failure) {
            SnackBarService.showSnackBar(
              context,
              state.errorMessage ?? '',
              error: true,
            );
          }
        },
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          // appBar: AppBar(
          //   title: Text(S.of(context).signUpScreenAppBarTitle),
          // ),
          body: SafeArea(
            child: SizedBox(
              height: MediaQuery.sizeOf(context).height -
                  MediaQuery.paddingOf(context).top,
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const GradientIcon(
                        iconData: Icons.textsms_rounded,
                        size: 96,
                      ),
                      const SizedBox(height: 15),
                      Text(
                        'RealTimeChat',
                        style:
                            Theme.of(context).textTheme.headlineLarge!.copyWith(
                                  color: Theme.of(context).colorScheme.primary,
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