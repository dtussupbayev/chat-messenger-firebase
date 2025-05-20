import 'package:firebase_auth/firebase_auth.dart';
import 'package:realtime_chat_app/generated/l10n.dart' show S;

import 'auth_exception.dart' show AuthException;

class FirebaseAuthExceptionHandler {
  static AuthException handle(FirebaseAuthException e) {
    switch (e.code) {
      case FirebaseErrorCodes.invalidEmail:
        return AuthException(S.current.firebase_auth_invalid_email);
      case FirebaseErrorCodes.userDisabled:
        return AuthException(S.current.firebase_auth_user_disabled);
      case FirebaseErrorCodes.userNotFound:
        return AuthException(S.current.firebase_auth_user_not_found);
      case FirebaseErrorCodes.wrongPassword:
        return AuthException(S.current.firebase_auth_wrong_password);
      default:
        return AuthException(
          S.current.authError(
            e.code,
            e.message ?? S.current.undefinedLoginError,
          ),
        );
    }
  }
}

abstract class FirebaseErrorCodes {
  static const invalidEmail = 'invalid-email';
  static const userDisabled = 'user-disabled';
  static const userNotFound = 'user-not-found';
  static const wrongPassword = 'wrong-password';
}
