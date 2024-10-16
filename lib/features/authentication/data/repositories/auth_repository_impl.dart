import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/core/exceptions/app_exception.dart';
import 'package:flutter_application_1/features/authentication/data/exceptions/auth_exception.dart';
import 'package:flutter_application_1/features/authentication/domain/entities/user_entity.dart';
import 'package:flutter_application_1/features/authentication/domain/repositories/auth_repository.dart';
import 'package:flutter_application_1/generated/l10n.dart';

class AuthRepositoryImpl implements IAuthRepository {
  const AuthRepositoryImpl();

  @override
  Future<void> signInWithEmailAndPassword(String email, String password) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email.trim(),
        password: password.trim(),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-credential' || e.code == 'wrong-password') {
        throw AuthException(S.current.wrongEmailOrPassword);
      } else {
        throw AuthException(S.current.undefinedLoginError);
      }
    } catch (e) {
      throw AppException(S.current.undefinedError);
    }
  }

  @override
  Future<UserEntity> createUserWithEmailAndPassword(
    String email,
    String password,
    String firstName,
    String lastName,
  ) async {
    final UserCredential userCredential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    final User? user = userCredential.user;

    final userEntity = UserEntity(
      uid: user!.uid,
      email: email,
      firstName: firstName,
      lastName: lastName,
    );

    await addUserDetails(userEntity);

    return userEntity;
  }

  @override
  Future<void> addUserDetails(UserEntity user) async {
    final userInfoMap = {
      'uid': user.uid,
      'email': user.email,
      'firstName': user.firstName,
      'lastName': user.lastName,
      'searchKeywords': generateSearchKeywords(user.firstName, user.lastName),
    };

    await FirebaseFirestore.instance
        .collection('users')
        .doc(user.uid)
        .set(userInfoMap);
  }

  @override
  List<String> generateSearchKeywords(String firstName, String lastName) {
    final lowercaseFirstName = firstName.toLowerCase();
    final lowercaseLastName = lastName.toLowerCase();

    final substrings = <String>{}
      ..add(lowercaseFirstName[0])
      ..addAll(
        Iterable.generate(
          lowercaseFirstName.length,
          (i) => lowercaseFirstName.substring(0, i + 1),
        ),
      )
      ..add(lowercaseLastName[0])
      ..addAll(
        Iterable.generate(
          lowercaseLastName.length,
          (i) => lowercaseLastName.substring(0, i + 1),
        ),
      );

    return substrings.toList();
  }

  @override
  Future<void> sendResetPasswordEmail(String email) async {
    await FirebaseAuth.instance.sendPasswordResetEmail(
      email: email.trim(),
    );
  }
}