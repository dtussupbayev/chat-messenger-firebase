import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:realtime_chat_app/core/locale_helper.dart';
import 'package:realtime_chat_app/features/authentication/domain/repositories/auth_repository.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_bloc.freezed.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc({required IAuthRepository authRepository})
    : _authRepository = authRepository,
      super(const SignUpState.initial()) {
    on<SignUpSubmitted>(_onSignUpSubmitted);
  }

  final IAuthRepository _authRepository;

  Future<void> _onSignUpSubmitted(SignUpSubmitted event, Emitter<SignUpState> emit) async {
    emit(const SignUpState.loading());

    try {
      await _authRepository.createUserWithEmailAndPassword(
        event.email,
        event.password,
        event.firstName,
        event.lastName,
      );
      emit(const SignUpState.success());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        emit(
          SignUpState.failure(errorMessage: LocaleStrings.current.emailAlreadyInUseSnackBarText),
        );
      } else {
        emit(SignUpState.failure(errorMessage: LocaleStrings.current.undefinedError));
      }
    }
  }
}
