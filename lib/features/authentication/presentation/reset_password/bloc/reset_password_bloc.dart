import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:realtime_chat_app/features/authentication/domain/use_cases/reset_password_use_case.dart';
import 'package:realtime_chat_app/generated/l10n.dart';

part 'reset_password_event.dart';
part 'reset_password_state.dart';

class ResetPasswordBloc extends Bloc<ResetPasswordEvent, ResetPasswordState> {
  ResetPasswordBloc({
    required this.resetPasswordUseCase,
  }) : super(const ResetPasswordState()) {
    on<ResetPasswordSubmitted>(_onResetPasswordSubmitted);
  }
  final ResetPasswordUseCase resetPasswordUseCase;

  Future<void> _onResetPasswordSubmitted(
    ResetPasswordSubmitted event,
    Emitter<ResetPasswordState> emit,
  ) async {
    emit(state.copyWith(status: ResetPasswordStatus.loading));
    try {
      await resetPasswordUseCase.execute(
        ResetPasswordParams(email: event.email),
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
