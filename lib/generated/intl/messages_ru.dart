// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru locale. All the
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
  String get localeName => 'ru';

  static String m0(code, message) => "Ошибка авторизации: ${code} - ${message}";

  static String m1(id) => "Чат ${id}";

  static String m2(error) => "Ошибка при создании чата: ${error}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "appTitle": MessageLookupByLibrary.simpleMessage("realtime_chat_app"),
    "appearance": MessageLookupByLibrary.simpleMessage("Внешний вид"),
    "authError": m0,
    "cancel": MessageLookupByLibrary.simpleMessage("Отменить"),
    "chatDetails": MessageLookupByLibrary.simpleMessage("Детали чата"),
    "chatListTileTitle": m1,
    "chats": MessageLookupByLibrary.simpleMessage("Чаты"),
    "currentUserNotFoundOrEmailIsMissing": MessageLookupByLibrary.simpleMessage(
      "Текущий пользователь не найден или электронная почта отсутствует",
    ),
    "darkTheme": MessageLookupByLibrary.simpleMessage("Темная тема"),
    "emailAlreadyInUseSnackBarText": MessageLookupByLibrary.simpleMessage(
      "Такой Email уже используется, повторите попытку с использованием другого Email",
    ),
    "emailFormHintText": MessageLookupByLibrary.simpleMessage("Введите почту"),
    "emailFormValidatorText": MessageLookupByLibrary.simpleMessage("Введите правильную почту"),
    "enter": MessageLookupByLibrary.simpleMessage("Войти"),
    "enterAValidLastName": MessageLookupByLibrary.simpleMessage("Введите правильную фамилию"),
    "enterAValidName": MessageLookupByLibrary.simpleMessage("Введите правильное имя"),
    "enterYourFirstName": MessageLookupByLibrary.simpleMessage("Введите свое имя"),
    "enterYourLastName": MessageLookupByLibrary.simpleMessage("Введите свою фамилию"),
    "enter_search_query": MessageLookupByLibrary.simpleMessage("Введите запрос для поиска"),
    "error": MessageLookupByLibrary.simpleMessage("Ошибка"),
    "errorCreatingChat": m2,
    "firebase_auth_invalid_email": MessageLookupByLibrary.simpleMessage("Неверный формат email."),
    "firebase_auth_user_disabled": MessageLookupByLibrary.simpleMessage(
      "Учетная запись отключена.",
    ),
    "firebase_auth_user_not_found": MessageLookupByLibrary.simpleMessage(
      "Пользователь с таким email не найден.",
    ),
    "firebase_auth_wrong_password": MessageLookupByLibrary.simpleMessage("Неверный пароль."),
    "firstName": MessageLookupByLibrary.simpleMessage("Имя:"),
    "firstNameFormHintText": MessageLookupByLibrary.simpleMessage("Введите имя"),
    "itemListAvailability": MessageLookupByLibrary.simpleMessage(
      "Список чатов доступен только для вошедших в систему",
    ),
    "itemListEmpty": MessageLookupByLibrary.simpleMessage(
      "Здесь нет чатов. Попробуйте отправить первое сообщение",
    ),
    "language": MessageLookupByLibrary.simpleMessage("Язык"),
    "lastName": MessageLookupByLibrary.simpleMessage("Фамилия:"),
    "lastNameFormHintText": MessageLookupByLibrary.simpleMessage("Введите фамилию"),
    "letsStart": MessageLookupByLibrary.simpleMessage("Давайте начнем"),
    "lightTheme": MessageLookupByLibrary.simpleMessage("Светлая тема"),
    "moreInformationHere": MessageLookupByLibrary.simpleMessage("Больше информации здесь"),
    "noUsersFound": MessageLookupByLibrary.simpleMessage("Пользователи не найдены"),
    "passwordFormHintText": MessageLookupByLibrary.simpleMessage("Введите пароль"),
    "passwordFormValidatorText": MessageLookupByLibrary.simpleMessage("Минимум 6 символов"),
    "passwordRepeatFormHintText": MessageLookupByLibrary.simpleMessage("Введите пароль еще раз"),
    "passwordsDifferent": MessageLookupByLibrary.simpleMessage("Пароли должны совпадать"),
    "profile": MessageLookupByLibrary.simpleMessage("Профиль"),
    "resend": MessageLookupByLibrary.simpleMessage("Повторно отправить"),
    "resetPassword": MessageLookupByLibrary.simpleMessage("Сбросить пароль"),
    "resetPasswordAppBarTitle": MessageLookupByLibrary.simpleMessage("Сброс пароля"),
    "resetPasswordButtonText": MessageLookupByLibrary.simpleMessage("Сбросить пароль"),
    "resetPasswordScreenAppBarTitle": MessageLookupByLibrary.simpleMessage("Сброс пароля"),
    "search": MessageLookupByLibrary.simpleMessage("Поиск"),
    "settings": MessageLookupByLibrary.simpleMessage("Настройки"),
    "signIn": MessageLookupByLibrary.simpleMessage("Войти"),
    "signOut": MessageLookupByLibrary.simpleMessage("Выйти"),
    "signUp": MessageLookupByLibrary.simpleMessage("Регистрация"),
    "signUpScreenAppBarTitle": MessageLookupByLibrary.simpleMessage("Зарегистрироваться"),
    "successResetPassword": MessageLookupByLibrary.simpleMessage(
      "Проверьте почту для сброса пароля",
    ),
    "systemTheme": MessageLookupByLibrary.simpleMessage("Системная тема"),
    "typeAMessage": MessageLookupByLibrary.simpleMessage("Введите сообщение"),
    "undefinedError": MessageLookupByLibrary.simpleMessage(
      "Неизвестная ошибка! Попробуйте еще раз или обратитесь в поддержку.",
    ),
    "undefinedLoginError": MessageLookupByLibrary.simpleMessage("Неопределенная ошибка при входе."),
    "userInformationNotAvailable": MessageLookupByLibrary.simpleMessage(
      "Информация о пользователе недоступна",
    ),
    "userNotFoundText": MessageLookupByLibrary.simpleMessage("Такой email не зарегистрирован!"),
    "verificationEmailResended": MessageLookupByLibrary.simpleMessage(
      "Письмо с подтверждением было отправлено на вашу электронную почту.",
    ),
    "verifyEmailScreenAppBarTitle": MessageLookupByLibrary.simpleMessage(
      "Верификация Email адреса",
    ),
    "welcome": MessageLookupByLibrary.simpleMessage("Добро пожаловать"),
    "welcomeText": MessageLookupByLibrary.simpleMessage(
      "RealtimeChat: Приложение для обмена сообщениями в режиме реального времени.",
    ),
    "wrongEmailOrPassword": MessageLookupByLibrary.simpleMessage(
      "Неправильный email или пароль. Повторите попытку",
    ),
    "you": MessageLookupByLibrary.simpleMessage("Вы"),
    "yourEmail": MessageLookupByLibrary.simpleMessage("Ваш Email:"),
  };
}
