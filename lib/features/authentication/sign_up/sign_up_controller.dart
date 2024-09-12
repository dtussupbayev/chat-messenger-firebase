import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';
import '../../../core/services/firestore_service.dart';
import '../../../core/utils/snack_bar_service.dart';
import '../../chats/chats_screen.dart';

class SignUpController extends ChangeNotifier {
  bool isHiddenPassword = true;
  final formKey = GlobalKey<FormState>();

  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  TextEditingController passwordRepeatTextEditingController = TextEditingController();
  TextEditingController firstNameTextEditingController = TextEditingController();
  TextEditingController lastNameTextEditingController = TextEditingController();

  disposeTextInputControllers() {
    emailTextEditingController.dispose();
    passwordTextEditingController.dispose();
    passwordRepeatTextEditingController.dispose();
    firstNameTextEditingController.dispose();
    lastNameTextEditingController.dispose();
  }

  togglePasswordView() {
    isHiddenPassword = !isHiddenPassword;

    notifyListeners();
  }

  Future<void> signUp(BuildContext context) async {
    final isValid = formKey.currentState!.validate();
    if (!isValid) return;

    if (passwordTextEditingController.text != passwordRepeatTextEditingController.text) {
      SnackBarService.showSnackBar(
        context,
        S.of(context).passwordsDifferent,
        true,
      );
      return;
    }

    try {
      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailTextEditingController.text,
        password: passwordTextEditingController.text,
      );

      User? user = userCredential.user;

      List<String> searchKeywords = FirestoreService.generateSearchKeywords(
        firstNameTextEditingController.text,
        lastNameTextEditingController.text,
      );

      Map<String, dynamic> userInfoMap = {
        'uid': user!.uid,
        'email': emailTextEditingController.text,
        'firstName': firstNameTextEditingController.text,
        'lastName': lastNameTextEditingController.text,
        'searchKeywords': searchKeywords,
      };

      await FirestoreService.addUserDetails(userInfoMap, user.uid);
    } on FirebaseAuthException catch (e) {
      if (context.mounted) {
        if (e.code == 'email-already-in-use') {
          SnackBarService.showSnackBar(
            context,
            S.of(context).emailAlreadyInUseSnackBarText,
            true,
          );
          return;
        } else {
          SnackBarService.showSnackBar(
            context,
            S.of(context).undefinedError,
            true,
          );
        }
      }
    }
    if (context.mounted) {
      Navigator.pushNamedAndRemoveUntil(context, ChatsScreen.routeName, (route) => false);
    }
  }
}
