part of 'verify_email_bloc.dart';

@freezed
class VerifyEmailEvent with _$VerifyEmailEvent {
  const factory VerifyEmailEvent.sendVerificationEmail() =
      SendVerificationEmail;
  const factory VerifyEmailEvent.checkEmailVerified() = CheckEmailVerified;
  const factory VerifyEmailEvent.cancelVerification() = CancelVerification;
}
