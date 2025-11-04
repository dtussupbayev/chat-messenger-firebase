import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'verify_email_event.dart';
part 'verify_email_state.dart';
part 'verify_email_bloc.freezed.dart';

class VerifyEmailBloc extends Bloc<VerifyEmailEvent, VerifyEmailState> {
  VerifyEmailBloc() : super(const VerifyEmailState()) {
    on<SendVerificationEmail>(_onSendVerificationEmail);
    on<CheckEmailVerified>(_onCheckEmailVerified);
    on<CancelVerification>(_onCancelVerification);
    add(const SendVerificationEmail());
  }

  Timer? _timer;

  Future<void> _onSendVerificationEmail(
    SendVerificationEmail event,
    Emitter<VerifyEmailState> emit,
  ) async {
    try {
      final user = FirebaseAuth.instance.currentUser!;
      await user.sendEmailVerification();
      _startEmailVerificationCheck();

      emit(state.copyWith(canResendEmail: false));
      await Future.delayed(const Duration(seconds: 20));
      emit(state.copyWith(canResendEmail: true));
    } catch (e) {
      emit(
        state.copyWith(
          status: VerifyEmailStatus.failure,
          errorMessage: e.toString(),
        ),
      );
    }
  }

  Future<void> _onCheckEmailVerified(
    CheckEmailVerified event,
    Emitter<VerifyEmailState> emit,
  ) async {
    try {
      await FirebaseAuth.instance.currentUser?.reload();

      final isEmailVerified = FirebaseAuth.instance.currentUser!.emailVerified;
      if (isEmailVerified) {
        emit(state.copyWith(status: VerifyEmailStatus.emailVerified));
        _timer?.cancel();
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        await FirebaseAuth.instance.signOut();
      }
    }
  }

  Future<void> _onCancelVerification(
    CancelVerification event,
    Emitter<VerifyEmailState> emit,
  ) async {
    _timer?.cancel();
    await FirebaseAuth.instance.signOut();
  }

  void _startEmailVerificationCheck() {
    _timer = Timer.periodic(
      const Duration(seconds: 5),
      (_) => add(const CheckEmailVerified()),
    );
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}