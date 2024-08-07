// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(id) => "Chat ${id}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "account": MessageLookupByLibrary.simpleMessage("Account"),
        "appTitle":
            MessageLookupByLibrary.simpleMessage("flutter_application_1"),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel "),
        "chatDetails": MessageLookupByLibrary.simpleMessage("Chat Details"),
        "chatListTileTitle": m0,
        "chats": MessageLookupByLibrary.simpleMessage("Chats"),
        "darkTheme": MessageLookupByLibrary.simpleMessage("Dark Theme"),
        "emailAlreadyInUseSnackBarText": MessageLookupByLibrary.simpleMessage(
            "Such email is already used, repeat the attempt using another email"),
        "emailFormHintText":
            MessageLookupByLibrary.simpleMessage("Enter the email"),
        "emailFormValidatorText":
            MessageLookupByLibrary.simpleMessage("Enter the right email"),
        "enter": MessageLookupByLibrary.simpleMessage("Enter"),
        "error": MessageLookupByLibrary.simpleMessage("Error"),
        "firstName": MessageLookupByLibrary.simpleMessage("First Name:"),
        "firstNameFormHintText":
            MessageLookupByLibrary.simpleMessage("First Name"),
        "itemListAvailability": MessageLookupByLibrary.simpleMessage(
            "The list of chats is available only for those signed in the system"),
        "lastName": MessageLookupByLibrary.simpleMessage("Last Name:"),
        "lastNameFormHintText":
            MessageLookupByLibrary.simpleMessage("Last Name"),
        "lightTheme": MessageLookupByLibrary.simpleMessage("Light Theme"),
        "moreInformationHere":
            MessageLookupByLibrary.simpleMessage("More Information Here"),
        "passwordFormHintText":
            MessageLookupByLibrary.simpleMessage("Enter the password"),
        "passwordFormValidatorText":
            MessageLookupByLibrary.simpleMessage("At least 6 characters"),
        "passwordRepeatFormHintText":
            MessageLookupByLibrary.simpleMessage("Enter the password again"),
        "passwordsDifferent":
            MessageLookupByLibrary.simpleMessage("Passwords must match"),
        "resend": MessageLookupByLibrary.simpleMessage("Resend"),
        "resetPassword": MessageLookupByLibrary.simpleMessage("Reset password"),
        "resetPasswordButtonText":
            MessageLookupByLibrary.simpleMessage("Reset password"),
        "resetPasswordScreenAppBarTitle":
            MessageLookupByLibrary.simpleMessage("Reset password"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "signInAppBarTitle": MessageLookupByLibrary.simpleMessage("Sign in"),
        "signOut": MessageLookupByLibrary.simpleMessage("Sign out"),
        "signUp": MessageLookupByLibrary.simpleMessage("Sign up"),
        "signUpScreenAppBarTitle":
            MessageLookupByLibrary.simpleMessage("Register"),
        "successResetPassword": MessageLookupByLibrary.simpleMessage(
            "Password reset. Check the mail"),
        "systemTheme": MessageLookupByLibrary.simpleMessage("System Theme"),
        "undefinedError": MessageLookupByLibrary.simpleMessage(
            "Unknown error!Try again or contact in support."),
        "userInformationNotAvailable": MessageLookupByLibrary.simpleMessage(
            "User information not available"),
        "userNotFoundText":
            MessageLookupByLibrary.simpleMessage("Such email is unregistered!"),
        "verificationEmailResended": MessageLookupByLibrary.simpleMessage(
            "A letter with verification was sent to your email."),
        "verifyEmailScreenAppBarTitle":
            MessageLookupByLibrary.simpleMessage("Verification Email address"),
        "wrongEmailOrPasswordSnackBar": MessageLookupByLibrary.simpleMessage(
            "Incorrect email or password.Try again"),
        "yourEmail": MessageLookupByLibrary.simpleMessage("Your email:")
      };
}
