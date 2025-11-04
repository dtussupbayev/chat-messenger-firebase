import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:realtime_chat_app/features/authentication/domain/use_cases/sign_up_use_case.dart';
import 'package:realtime_chat_app/generated/l10n.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_bloc.freezed.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc({required this.signUpUseCase}) : super(const SignUpState()) {
    on<SignUpSubmitted>(_onSignUpSubmitted);
    on<TogglePasswordVisibility>(_onTogglePasswordVisibility);
    on<ToggleRepeatPasswordVisibility>(_onToggleRepeatPasswordVisibility);
  }

  final SignUpUseCase signUpUseCase;

  Future<void> _onSignUpSubmitted(
    SignUpSubmitted event,
    Emitter<SignUpState> emit,
  ) async {
    emit(state.copyWith(status: SignUpStatus.loading));

    try {
      await signUpUseCase.execute(
        SignUpParams(
          email: event.email,
          password: event.password,
          firstName: event.firstName,
          lastName: event.lastName,
        ),
      );
      emit(state.copyWith(status: SignUpStatus.success));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        emit(
          state.copyWith(
            status: SignUpStatus.failure,
            errorMessage: S.current.emailAlreadyInUseSnackBarText,
          ),
        );
      } else {
        emit(
          state.copyWith(
            status: SignUpStatus.failure,
            errorMessage: S.current.undefinedError,
          ),
        );
      }
    }
  }

  void _onTogglePasswordVisibility(
    TogglePasswordVisibility event,
    Emitter<SignUpState> emit,
  ) {
    emit(
      state.copyWith(
        status: SignUpStatus.initial,
        isPasswordHidden: !state.isPasswordHidden,
      ),
    );
  }

  void _onToggleRepeatPasswordVisibility(
    ToggleRepeatPasswordVisibility event,
    Emitter<SignUpState> emit,
  ) {
    emit(
      state.copyWith(
        status: SignUpStatus.initial,
        isRepeatPasswordHidden: !state.isRepeatPasswordHidden,
      ),
    );
  }
}
