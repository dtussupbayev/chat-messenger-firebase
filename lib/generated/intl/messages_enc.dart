// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a enc locale. All the
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
  String get localeName => 'enc';

  static String m0(code, message) => "Ошибка авторизации: ${code} - ${message}";

  static String m1(id) => "Chat ${id}";

  static String m2(error) => "Error creating chat: ${error}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "appTitle": MessageLookupByLibrary.simpleMessage("realtime_chat_app"),
    "appearance": MessageLookupByLibrary.simpleMessage("Appearance"),
    "authError": m0,
    "cancel": MessageLookupByLibrary.simpleMessage("Cancel "),
    "chatDetails": MessageLookupByLibrary.simpleMessage("Chat Details"),
    "chatListTileTitle": m1,
    "chats": MessageLookupByLibrary.simpleMessage("Chats"),
    "currentUserNotFoundOrEmailIsMissing": MessageLookupByLibrary.simpleMessage(
      "Current user not found or email is missing",
    ),
    "darkTheme": MessageLookupByLibrary.simpleMessage("Dark Theme"),
    "emailAlreadyInUseSnackBarText": MessageLookupByLibrary.simpleMessage(
      "Such email is already used, repeat the attempt using another email",
    ),
    "emailFormHintText": MessageLookupByLibrary.simpleMessage(
      "Enter the email",
    ),
    "emailFormValidatorText": MessageLookupByLibrary.simpleMessage(
      "Enter the right email",
    ),
    "enter": MessageLookupByLibrary.simpleMessage("Enter"),
    "enterAValidLastName": MessageLookupByLibrary.simpleMessage(
      "Enter a Valid Last Name",
    ),
    "enterAValidName": MessageLookupByLibrary.simpleMessage(
      "Enter a Valid Name",
    ),
    "enterYourFirstName": MessageLookupByLibrary.simpleMessage(
      "Enter your first name",
    ),
    "enterYourLastName": MessageLookupByLibrary.simpleMessage(
      "Enter your last name",
    ),
    "enter_search_query": MessageLookupByLibrary.simpleMessage(
      "Please enter a search query",
    ),
    "error": MessageLookupByLibrary.simpleMessage("Error"),
    "errorCreatingChat": m2,
    "firebase_auth_invalid_email": MessageLookupByLibrary.simpleMessage(
      "The wrong format email.",
    ),
    "firebase_auth_user_disabled": MessageLookupByLibrary.simpleMessage(
      "The account is disabled.",
    ),
    "firebase_auth_user_not_found": MessageLookupByLibrary.simpleMessage(
      "User with such an email was not found.",
    ),
    "firebase_auth_wrong_password": MessageLookupByLibrary.simpleMessage(
      "Wrong password.",
    ),
    "firstName": MessageLookupByLibrary.simpleMessage("First Name:"),
    "firstNameFormHintText": MessageLookupByLibrary.simpleMessage(
      "Enter the first name",
    ),
    "itemListAvailability": MessageLookupByLibrary.simpleMessage(
      "The list of chats is available only for those signed in the system",
    ),
    "itemListEmpty": MessageLookupByLibrary.simpleMessage(
      "Your messages empty, try to send new message",
    ),
    "language": MessageLookupByLibrary.simpleMessage("Language"),
    "lastName": MessageLookupByLibrary.simpleMessage("Last Name:"),
    "lastNameFormHintText": MessageLookupByLibrary.simpleMessage(
      "Enter the last name",
    ),
    "letsStart": MessageLookupByLibrary.simpleMessage("Let\'s start"),
    "lightTheme": MessageLookupByLibrary.simpleMessage("Light Theme"),
    "moreInformationHere": MessageLookupByLibrary.simpleMessage(
      "More Information Here",
    ),
    "noUsersFound": MessageLookupByLibrary.simpleMessage("No users found"),
    "passwordFormHintText": MessageLookupByLibrary.simpleMessage(
      "Enter the password",
    ),
    "passwordFormValidatorText": MessageLookupByLibrary.simpleMessage(
      "At least 6 characters",
    ),
    "passwordRepeatFormHintText": MessageLookupByLibrary.simpleMessage(
      "Enter the password again",
    ),
    "passwordsDifferent": MessageLookupByLibrary.simpleMessage(
      "Passwords must match",
    ),
    "profile": MessageLookupByLibrary.simpleMessage("Profile"),
    "resend": MessageLookupByLibrary.simpleMessage("Resend"),
    "resetPassword": MessageLookupByLibrary.simpleMessage("Reset password"),
    "resetPasswordAppBarTitle": MessageLookupByLibrary.simpleMessage(
      "Reset password",
    ),
    "resetPasswordButtonText": MessageLookupByLibrary.simpleMessage(
      "Reset password",
    ),
    "resetPasswordScreenAppBarTitle": MessageLookupByLibrary.simpleMessage(
      "Reset password",
    ),
    "search": MessageLookupByLibrary.simpleMessage("Search"),
    "settings": MessageLookupByLibrary.simpleMessage("Settings"),
    "signIn": MessageLookupByLibrary.simpleMessage("Sign in"),
    "signOut": MessageLookupByLibrary.simpleMessage("Sign out"),
    "signUp": MessageLookupByLibrary.simpleMessage("Sign up"),
    "signUpScreenAppBarTitle": MessageLookupByLibrary.simpleMessage("Register"),
    "successResetPassword": MessageLookupByLibrary.simpleMessage(
      "Password reset. Check the mail",
    ),
    "systemTheme": MessageLookupByLibrary.simpleMessage("System Theme"),
    "typeAMessage": MessageLookupByLibrary.simpleMessage("Type a message"),
    "undefinedError": MessageLookupByLibrary.simpleMessage(
      "Unknown error! Try again or contact in support.",
    ),
    "undefinedLoginError": MessageLookupByLibrary.simpleMessage(
      "Undefined login error.",
    ),
    "userInformationNotAvailable": MessageLookupByLibrary.simpleMessage(
      "User information not available",
    ),
    "userNotFoundText": MessageLookupByLibrary.simpleMessage(
      "Such email is unregistered!",
    ),
    "verificationEmailResended": MessageLookupByLibrary.simpleMessage(
      "A letter with verification was sent to your email.",
    ),
    "verifyEmailScreenAppBarTitle": MessageLookupByLibrary.simpleMessage(
      "Verification Email address",
    ),
    "welcome": MessageLookupByLibrary.simpleMessage("Welcome"),
    "welcomeText": MessageLookupByLibrary.simpleMessage(
      "RealtimeChat: A real time messaging app for seamless communication.",
    ),
    "wrongEmailOrPassword": MessageLookupByLibrary.simpleMessage(
      "Incorrect email or password. Try again",
    ),
    "you": MessageLookupByLibrary.simpleMessage("You"),
    "yourEmail": MessageLookupByLibrary.simpleMessage("Your email:"),
  };
}
