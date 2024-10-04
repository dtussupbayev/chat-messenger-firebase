import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_application_1/core/services/firestore_service.dart';
import 'package:flutter_application_1/generated/l10n.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc() : super(const SignUpState()) {
    on<SignUpSubmitted>(_onSignUpSubmitted);
    on<TogglePasswordVisibility>(_onTogglePasswordVisibility);
    on<ToggleRepeatPasswordVisibility>(_onToggleRepeatPasswordVisibility);
  }

  Future<void> _onSignUpSubmitted(
    SignUpSubmitted event,
    Emitter<SignUpState> emit,
  ) async {
    emit(state.copyWith(status: SignUpStatus.loading));

    try {
      final UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: event.email,
        password: event.password,
      );

      final User? user = userCredential.user;

      final List<String> searchKeywords =
          FirestoreService.generateSearchKeywords(
        event.firstName,
        event.lastName,
      );

      final Map<String, dynamic> userInfoMap = {
        'uid': user!.uid,
        'email': event.email,
        'firstName': event.firstName,
        'lastName': event.lastName,
        'searchKeywords': searchKeywords,
      };

      await FirestoreService.addUserDetails(userInfoMap, user.uid);
      emit(state.copyWith(status: SignUpStatus.success));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        emit(
          state.copyWith(
            status: SignUpStatus.failure,
            errorMessage: () => S.current.emailAlreadyInUseSnackBarText,
          ),
        );
      } else {
        emit(
          state.copyWith(
            status: SignUpStatus.failure,
            errorMessage: () => S.current.undefinedError,
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
