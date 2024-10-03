import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/snack_bar_service.dart';
import 'package:flutter_application_1/features/authentication/sign_up/bloc/sign_up_bloc.dart';
import 'package:flutter_application_1/features/authentication/sign_up/widgets/sign_up_form.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpBloc(),
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
          resizeToAvoidBottomInset: false,
          // appBar: AppBar(
          //   title: Text(S.of(context).signUpScreenAppBarTitle),
          // ),
          body: Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: SingleChildScrollView(
              child: SizedBox(
                height: MediaQuery.sizeOf(context).height,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.textsms_rounded,
                        size: 96,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      const SizedBox(height: 15),
                      Text(
                        'RealTimeChat',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                              color: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.w700,
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
