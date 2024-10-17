// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `realtime_chat_app`
  String get appTitle {
    return Intl.message(
      'realtime_chat_app',
      name: 'appTitle',
      desc: 'The title of the application',
      args: [],
    );
  }

  /// `Chat Details`
  String get chatDetails {
    return Intl.message(
      'Chat Details',
      name: 'chatDetails',
      desc: '',
      args: [],
    );
  }

  /// `More Information Here`
  String get moreInformationHere {
    return Intl.message(
      'More Information Here',
      name: 'moreInformationHere',
      desc: '',
      args: [],
    );
  }

  /// `Chats`
  String get chats {
    return Intl.message(
      'Chats',
      name: 'chats',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `System Theme`
  String get systemTheme {
    return Intl.message(
      'System Theme',
      name: 'systemTheme',
      desc: '',
      args: [],
    );
  }

  /// `Light Theme`
  String get lightTheme {
    return Intl.message(
      'Light Theme',
      name: 'lightTheme',
      desc: '',
      args: [],
    );
  }

  /// `Dark Theme`
  String get darkTheme {
    return Intl.message(
      'Dark Theme',
      name: 'darkTheme',
      desc: '',
      args: [],
    );
  }

  /// `Sign in`
  String get signInAppBarTitle {
    return Intl.message(
      'Sign in',
      name: 'signInAppBarTitle',
      desc: '',
      args: [],
    );
  }

  /// `Chat {id}`
  String chatListTileTitle(int id) {
    return Intl.message(
      'Chat $id',
      name: 'chatListTileTitle',
      desc: '',
      args: [id],
    );
  }

  /// `Enter the email`
  String get emailFormHintText {
    return Intl.message(
      'Enter the email',
      name: 'emailFormHintText',
      desc: '',
      args: [],
    );
  }

  /// `Enter the right email`
  String get emailFormValidatorText {
    return Intl.message(
      'Enter the right email',
      name: 'emailFormValidatorText',
      desc: '',
      args: [],
    );
  }

  /// `Incorrect email or password. Try again`
  String get wrongEmailOrPassword {
    return Intl.message(
      'Incorrect email or password. Try again',
      name: 'wrongEmailOrPassword',
      desc: '',
      args: [],
    );
  }

  /// `Unknown error! Try again or contact in support.`
  String get undefinedError {
    return Intl.message(
      'Unknown error! Try again or contact in support.',
      name: 'undefinedError',
      desc: '',
      args: [],
    );
  }

  /// `At least 6 characters`
  String get passwordFormValidatorText {
    return Intl.message(
      'At least 6 characters',
      name: 'passwordFormValidatorText',
      desc: '',
      args: [],
    );
  }

  /// `Enter the password`
  String get passwordFormHintText {
    return Intl.message(
      'Enter the password',
      name: 'passwordFormHintText',
      desc: '',
      args: [],
    );
  }

  /// `Enter`
  String get enter {
    return Intl.message(
      'Enter',
      name: 'enter',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get signUp {
    return Intl.message(
      'Sign up',
      name: 'signUp',
      desc: '',
      args: [],
    );
  }

  /// `Reset password`
  String get resetPassword {
    return Intl.message(
      'Reset password',
      name: 'resetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get signUpScreenAppBarTitle {
    return Intl.message(
      'Register',
      name: 'signUpScreenAppBarTitle',
      desc: '',
      args: [],
    );
  }

  /// `Reset password`
  String get resetPasswordScreenAppBarTitle {
    return Intl.message(
      'Reset password',
      name: 'resetPasswordScreenAppBarTitle',
      desc: '',
      args: [],
    );
  }

  /// `Passwords must match`
  String get passwordsDifferent {
    return Intl.message(
      'Passwords must match',
      name: 'passwordsDifferent',
      desc: '',
      args: [],
    );
  }

  /// `Such email is already used, repeat the attempt using another email`
  String get emailAlreadyInUseSnackBarText {
    return Intl.message(
      'Such email is already used, repeat the attempt using another email',
      name: 'emailAlreadyInUseSnackBarText',
      desc: '',
      args: [],
    );
  }

  /// `Enter the password again`
  String get passwordRepeatFormHintText {
    return Intl.message(
      'Enter the password again',
      name: 'passwordRepeatFormHintText',
      desc: '',
      args: [],
    );
  }

  /// `Such email is unregistered!`
  String get userNotFoundText {
    return Intl.message(
      'Such email is unregistered!',
      name: 'userNotFoundText',
      desc: '',
      args: [],
    );
  }

  /// `Password reset. Check the mail`
  String get successResetPassword {
    return Intl.message(
      'Password reset. Check the mail',
      name: 'successResetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Reset password`
  String get resetPasswordButtonText {
    return Intl.message(
      'Reset password',
      name: 'resetPasswordButtonText',
      desc: '',
      args: [],
    );
  }

  /// `Resend`
  String get resend {
    return Intl.message(
      'Resend',
      name: 'resend',
      desc: '',
      args: [],
    );
  }

  /// `A letter with verification was sent to your email.`
  String get verificationEmailResended {
    return Intl.message(
      'A letter with verification was sent to your email.',
      name: 'verificationEmailResended',
      desc: '',
      args: [],
    );
  }

  /// `Verification Email address`
  String get verifyEmailScreenAppBarTitle {
    return Intl.message(
      'Verification Email address',
      name: 'verifyEmailScreenAppBarTitle',
      desc: '',
      args: [],
    );
  }

  /// `Cancel `
  String get cancel {
    return Intl.message(
      'Cancel ',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Sign out`
  String get signOut {
    return Intl.message(
      'Sign out',
      name: 'signOut',
      desc: '',
      args: [],
    );
  }

  /// `Your email:`
  String get yourEmail {
    return Intl.message(
      'Your email:',
      name: 'yourEmail',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `The list of chats is available only for those signed in the system`
  String get itemListAvailability {
    return Intl.message(
      'The list of chats is available only for those signed in the system',
      name: 'itemListAvailability',
      desc: '',
      args: [],
    );
  }

  /// `Your messages empty, try to send new message`
  String get itemListEmpty {
    return Intl.message(
      'Your messages empty, try to send new message',
      name: 'itemListEmpty',
      desc: '',
      args: [],
    );
  }

  /// `First Name:`
  String get firstName {
    return Intl.message(
      'First Name:',
      name: 'firstName',
      desc: '',
      args: [],
    );
  }

  /// `Last Name:`
  String get lastName {
    return Intl.message(
      'Last Name:',
      name: 'lastName',
      desc: '',
      args: [],
    );
  }

  /// `Enter the first name`
  String get firstNameFormHintText {
    return Intl.message(
      'Enter the first name',
      name: 'firstNameFormHintText',
      desc: '',
      args: [],
    );
  }

  /// `Enter the last name`
  String get lastNameFormHintText {
    return Intl.message(
      'Enter the last name',
      name: 'lastNameFormHintText',
      desc: '',
      args: [],
    );
  }

  /// `Error`
  String get error {
    return Intl.message(
      'Error',
      name: 'error',
      desc: '',
      args: [],
    );
  }

  /// `User information not available`
  String get userInformationNotAvailable {
    return Intl.message(
      'User information not available',
      name: 'userInformationNotAvailable',
      desc: '',
      args: [],
    );
  }

  /// `Type a message`
  String get typeAMessage {
    return Intl.message(
      'Type a message',
      name: 'typeAMessage',
      desc: '',
      args: [],
    );
  }

  /// `You`
  String get you {
    return Intl.message(
      'You',
      name: 'you',
      desc: '',
      args: [],
    );
  }

  /// `Enter your first name`
  String get enterYourFirstName {
    return Intl.message(
      'Enter your first name',
      name: 'enterYourFirstName',
      desc: '',
      args: [],
    );
  }

  /// `Enter a Valid Name`
  String get enterAValidName {
    return Intl.message(
      'Enter a Valid Name',
      name: 'enterAValidName',
      desc: '',
      args: [],
    );
  }

  /// `Enter your last name`
  String get enterYourLastName {
    return Intl.message(
      'Enter your last name',
      name: 'enterYourLastName',
      desc: '',
      args: [],
    );
  }

  /// `Enter a Valid Last Name`
  String get enterAValidLastName {
    return Intl.message(
      'Enter a Valid Last Name',
      name: 'enterAValidLastName',
      desc: '',
      args: [],
    );
  }

  /// `Welcome`
  String get welcome {
    return Intl.message(
      'Welcome',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `Let's start`
  String get letsStart {
    return Intl.message(
      'Let\'s start',
      name: 'letsStart',
      desc: '',
      args: [],
    );
  }

  /// `RealtimeChat: A real time messaging app for seamless communication.`
  String get welcomeText {
    return Intl.message(
      'RealtimeChat: A real time messaging app for seamless communication.',
      name: 'welcomeText',
      desc: '',
      args: [],
    );
  }

  /// `Undefined login error.`
  String get undefinedLoginError {
    return Intl.message(
      'Undefined login error.',
      name: 'undefinedLoginError',
      desc: '',
      args: [],
    );
  }

  /// `Appearance`
  String get appearance {
    return Intl.message(
      'Appearance',
      name: 'appearance',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
