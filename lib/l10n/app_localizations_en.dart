// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'realtime_chat_app';

  @override
  String get appearance => 'Appearance';

  @override
  String authError(Object code, Object message) {
    return 'Ошибка авторизации: $code - $message';
  }

  @override
  String get cancel => 'Cancel ';

  @override
  String get chatDetails => 'Chat Details';

  @override
  String chatListTileTitle(int id) {
    return 'Chat $id';
  }

  @override
  String get chats => 'Chats';

  @override
  String get darkTheme => 'Dark Theme';

  @override
  String get emailAlreadyInUseSnackBarText => 'Such email is already used, repeat the attempt using another email';

  @override
  String get emailFormHintText => 'Enter the email';

  @override
  String get emailFormValidatorText => 'Enter the right email';

  @override
  String get enter => 'Enter';

  @override
  String get enterAValidLastName => 'Enter a Valid Last Name';

  @override
  String get enterAValidName => 'Enter a Valid Name';

  @override
  String get enterYourFirstName => 'Enter your first name';

  @override
  String get enterYourLastName => 'Enter your last name';

  @override
  String get error => 'Error';

  @override
  String get firebase_auth_invalid_email => 'The wrong format email.';

  @override
  String get firebase_auth_user_disabled => 'The account is disabled.';

  @override
  String get firebase_auth_user_not_found => 'User with such an email was not found.';

  @override
  String get firebase_auth_wrong_password => 'Wrong password.';

  @override
  String get firstName => 'First Name:';

  @override
  String get firstNameFormHintText => 'Enter the first name';

  @override
  String get itemListAvailability => 'The list of chats is available only for those signed in the system';

  @override
  String get itemListEmpty => 'Your messages empty, try to send new message';

  @override
  String get language => 'Language';

  @override
  String get lastName => 'Last Name:';

  @override
  String get lastNameFormHintText => 'Enter the last name';

  @override
  String get letsStart => 'Let\'s start';

  @override
  String get lightTheme => 'Light Theme';

  @override
  String get moreInformationHere => 'More Information Here';

  @override
  String get passwordFormHintText => 'Enter the password';

  @override
  String get passwordFormValidatorText => 'At least 6 characters';

  @override
  String get passwordRepeatFormHintText => 'Enter the password again';

  @override
  String get passwordsDifferent => 'Passwords must match';

  @override
  String get profile => 'Profile';

  @override
  String get resend => 'Resend';

  @override
  String get resetPassword => 'Reset password';

  @override
  String get resetPasswordAppBarTitle => 'Reset password';

  @override
  String get resetPasswordButtonText => 'Reset password';

  @override
  String get resetPasswordScreenAppBarTitle => 'Reset password';

  @override
  String get settings => 'Settings';

  @override
  String get signIn => 'Sign in';

  @override
  String get signOut => 'Sign out';

  @override
  String get signUp => 'Sign up';

  @override
  String get signUpScreenAppBarTitle => 'Register';

  @override
  String get successResetPassword => 'Password reset. Check the mail';

  @override
  String get systemTheme => 'System Theme';

  @override
  String get typeAMessage => 'Type a message';

  @override
  String get undefinedError => 'Unknown error! Try again or contact in support.';

  @override
  String get undefinedLoginError => 'Undefined login error.';

  @override
  String get userInformationNotAvailable => 'User information not available';

  @override
  String get userNotFoundText => 'Such email is unregistered!';

  @override
  String get verificationEmailResended => 'A letter with verification was sent to your email.';

  @override
  String get verifyEmailScreenAppBarTitle => 'Verification Email address';

  @override
  String get welcome => 'Welcome';

  @override
  String get welcomeText => 'RealtimeChat: A real time messaging app for seamless communication.';

  @override
  String get wrongEmailOrPassword => 'Incorrect email or password. Try again';

  @override
  String get you => 'You';

  @override
  String get yourEmail => 'Your email:';

  @override
  String get search => 'Search';

  @override
  String get noUsersFound => 'No users found';

  @override
  String errorCreatingChat(Object error) {
    return 'Error creating chat: $error';
  }

  @override
  String get currentUserNotFoundOrEmailIsMissing => 'Current user not found or email is missing';

  @override
  String get enter_search_query => 'Please enter a search query';
}
