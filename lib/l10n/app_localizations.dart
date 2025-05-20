import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_ru.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ru')
  ];

  /// The title of the application
  ///
  /// In en, this message translates to:
  /// **'realtime_chat_app'**
  String get appTitle;

  /// No description provided for @appearance.
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get appearance;

  /// No description provided for @authError.
  ///
  /// In en, this message translates to:
  /// **'Ошибка авторизации: {code} - {message}'**
  String authError(Object code, Object message);

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel '**
  String get cancel;

  /// No description provided for @chatDetails.
  ///
  /// In en, this message translates to:
  /// **'Chat Details'**
  String get chatDetails;

  /// No description provided for @chatListTileTitle.
  ///
  /// In en, this message translates to:
  /// **'Chat {id}'**
  String chatListTileTitle(int id);

  /// No description provided for @chats.
  ///
  /// In en, this message translates to:
  /// **'Chats'**
  String get chats;

  /// No description provided for @darkTheme.
  ///
  /// In en, this message translates to:
  /// **'Dark Theme'**
  String get darkTheme;

  /// No description provided for @emailAlreadyInUseSnackBarText.
  ///
  /// In en, this message translates to:
  /// **'Such email is already used, repeat the attempt using another email'**
  String get emailAlreadyInUseSnackBarText;

  /// No description provided for @emailFormHintText.
  ///
  /// In en, this message translates to:
  /// **'Enter the email'**
  String get emailFormHintText;

  /// No description provided for @emailFormValidatorText.
  ///
  /// In en, this message translates to:
  /// **'Enter the right email'**
  String get emailFormValidatorText;

  /// No description provided for @enter.
  ///
  /// In en, this message translates to:
  /// **'Enter'**
  String get enter;

  /// No description provided for @enterAValidLastName.
  ///
  /// In en, this message translates to:
  /// **'Enter a Valid Last Name'**
  String get enterAValidLastName;

  /// No description provided for @enterAValidName.
  ///
  /// In en, this message translates to:
  /// **'Enter a Valid Name'**
  String get enterAValidName;

  /// No description provided for @enterYourFirstName.
  ///
  /// In en, this message translates to:
  /// **'Enter your first name'**
  String get enterYourFirstName;

  /// No description provided for @enterYourLastName.
  ///
  /// In en, this message translates to:
  /// **'Enter your last name'**
  String get enterYourLastName;

  /// No description provided for @error.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get error;

  /// No description provided for @firebase_auth_invalid_email.
  ///
  /// In en, this message translates to:
  /// **'The wrong format email.'**
  String get firebase_auth_invalid_email;

  /// No description provided for @firebase_auth_user_disabled.
  ///
  /// In en, this message translates to:
  /// **'The account is disabled.'**
  String get firebase_auth_user_disabled;

  /// No description provided for @firebase_auth_user_not_found.
  ///
  /// In en, this message translates to:
  /// **'User with such an email was not found.'**
  String get firebase_auth_user_not_found;

  /// No description provided for @firebase_auth_wrong_password.
  ///
  /// In en, this message translates to:
  /// **'Wrong password.'**
  String get firebase_auth_wrong_password;

  /// No description provided for @firstName.
  ///
  /// In en, this message translates to:
  /// **'First Name:'**
  String get firstName;

  /// No description provided for @firstNameFormHintText.
  ///
  /// In en, this message translates to:
  /// **'Enter the first name'**
  String get firstNameFormHintText;

  /// No description provided for @itemListAvailability.
  ///
  /// In en, this message translates to:
  /// **'The list of chats is available only for those signed in the system'**
  String get itemListAvailability;

  /// No description provided for @itemListEmpty.
  ///
  /// In en, this message translates to:
  /// **'Your messages empty, try to send new message'**
  String get itemListEmpty;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @lastName.
  ///
  /// In en, this message translates to:
  /// **'Last Name:'**
  String get lastName;

  /// No description provided for @lastNameFormHintText.
  ///
  /// In en, this message translates to:
  /// **'Enter the last name'**
  String get lastNameFormHintText;

  /// No description provided for @letsStart.
  ///
  /// In en, this message translates to:
  /// **'Let\'s start'**
  String get letsStart;

  /// No description provided for @lightTheme.
  ///
  /// In en, this message translates to:
  /// **'Light Theme'**
  String get lightTheme;

  /// No description provided for @moreInformationHere.
  ///
  /// In en, this message translates to:
  /// **'More Information Here'**
  String get moreInformationHere;

  /// No description provided for @passwordFormHintText.
  ///
  /// In en, this message translates to:
  /// **'Enter the password'**
  String get passwordFormHintText;

  /// No description provided for @passwordFormValidatorText.
  ///
  /// In en, this message translates to:
  /// **'At least 6 characters'**
  String get passwordFormValidatorText;

  /// No description provided for @passwordRepeatFormHintText.
  ///
  /// In en, this message translates to:
  /// **'Enter the password again'**
  String get passwordRepeatFormHintText;

  /// No description provided for @passwordsDifferent.
  ///
  /// In en, this message translates to:
  /// **'Passwords must match'**
  String get passwordsDifferent;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @resend.
  ///
  /// In en, this message translates to:
  /// **'Resend'**
  String get resend;

  /// No description provided for @resetPassword.
  ///
  /// In en, this message translates to:
  /// **'Reset password'**
  String get resetPassword;

  /// No description provided for @resetPasswordAppBarTitle.
  ///
  /// In en, this message translates to:
  /// **'Reset password'**
  String get resetPasswordAppBarTitle;

  /// No description provided for @resetPasswordButtonText.
  ///
  /// In en, this message translates to:
  /// **'Reset password'**
  String get resetPasswordButtonText;

  /// No description provided for @resetPasswordScreenAppBarTitle.
  ///
  /// In en, this message translates to:
  /// **'Reset password'**
  String get resetPasswordScreenAppBarTitle;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @signIn.
  ///
  /// In en, this message translates to:
  /// **'Sign in'**
  String get signIn;

  /// No description provided for @signOut.
  ///
  /// In en, this message translates to:
  /// **'Sign out'**
  String get signOut;

  /// No description provided for @signUp.
  ///
  /// In en, this message translates to:
  /// **'Sign up'**
  String get signUp;

  /// No description provided for @signUpScreenAppBarTitle.
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get signUpScreenAppBarTitle;

  /// No description provided for @successResetPassword.
  ///
  /// In en, this message translates to:
  /// **'Password reset. Check the mail'**
  String get successResetPassword;

  /// No description provided for @systemTheme.
  ///
  /// In en, this message translates to:
  /// **'System Theme'**
  String get systemTheme;

  /// No description provided for @typeAMessage.
  ///
  /// In en, this message translates to:
  /// **'Type a message'**
  String get typeAMessage;

  /// No description provided for @undefinedError.
  ///
  /// In en, this message translates to:
  /// **'Unknown error! Try again or contact in support.'**
  String get undefinedError;

  /// No description provided for @undefinedLoginError.
  ///
  /// In en, this message translates to:
  /// **'Undefined login error.'**
  String get undefinedLoginError;

  /// No description provided for @userInformationNotAvailable.
  ///
  /// In en, this message translates to:
  /// **'User information not available'**
  String get userInformationNotAvailable;

  /// No description provided for @userNotFoundText.
  ///
  /// In en, this message translates to:
  /// **'Such email is unregistered!'**
  String get userNotFoundText;

  /// No description provided for @verificationEmailResended.
  ///
  /// In en, this message translates to:
  /// **'A letter with verification was sent to your email.'**
  String get verificationEmailResended;

  /// No description provided for @verifyEmailScreenAppBarTitle.
  ///
  /// In en, this message translates to:
  /// **'Verification Email address'**
  String get verifyEmailScreenAppBarTitle;

  /// No description provided for @welcome.
  ///
  /// In en, this message translates to:
  /// **'Welcome'**
  String get welcome;

  /// No description provided for @welcomeText.
  ///
  /// In en, this message translates to:
  /// **'RealtimeChat: A real time messaging app for seamless communication.'**
  String get welcomeText;

  /// No description provided for @wrongEmailOrPassword.
  ///
  /// In en, this message translates to:
  /// **'Incorrect email or password. Try again'**
  String get wrongEmailOrPassword;

  /// No description provided for @you.
  ///
  /// In en, this message translates to:
  /// **'You'**
  String get you;

  /// No description provided for @yourEmail.
  ///
  /// In en, this message translates to:
  /// **'Your email:'**
  String get yourEmail;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'ru'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'ru': return AppLocalizationsRu();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
