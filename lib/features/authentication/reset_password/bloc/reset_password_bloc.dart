import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/generated/l10n.dart';

part 'reset_password_event.dart';
part 'reset_password_state.dart';

class ResetPasswordBloc extends Bloc<ResetPasswordEvent, ResetPasswordState> {
  ResetPasswordBloc() : super(const ResetPasswordState()) {
    on<ResetPasswordSubmitted>(_onResetPasswordSubmitted);
  }

  Future<void> _onResetPasswordSubmitted(
    ResetPasswordSubmitted event,
    Emitter<ResetPasswordState> emit,
  ) async {
    emit(state.copyWith(status: ResetPasswordStatus.loading));
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(
        email: event.email.trim(),
      );
      emit(state.copyWith(status: ResetPasswordStatus.success));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(
          state.copyWith(
            status: ResetPasswordStatus.failure,
            errorMessage: S.current.userNotFoundText,
          ),
        );
      } else {
        emit(
          state.copyWith(
            status: ResetPasswordStatus.failure,
            errorMessage: S.current.undefinedError,
          ),
        );
      }
    }
  }
}
