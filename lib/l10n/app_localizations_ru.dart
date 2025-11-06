// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appTitle => 'realtime_chat_app';

  @override
  String get appearance => 'Внешний вид';

  @override
  String authError(String code, String message) {
    return 'Ошибка авторизации: $code - $message';
  }

  @override
  String get cancel => 'Отменить';

  @override
  String get chatDetails => 'Детали чата';

  @override
  String chatListTileTitle(int id) {
    return 'Чат $id';
  }

  @override
  String get chats => 'Чаты';

  @override
  String get darkTheme => 'Темная тема';

  @override
  String get emailAlreadyInUseSnackBarText => 'Такой Email уже используется, повторите попытку с использованием другого Email';

  @override
  String get emailFormHintText => 'Введите почту';

  @override
  String get emailFormValidatorText => 'Введите правильную почту';

  @override
  String get enter => 'Войти';

  @override
  String get enterAValidLastName => 'Введите правильную фамилию';

  @override
  String get enterAValidName => 'Введите правильное имя';

  @override
  String get enterYourFirstName => 'Введите свое имя';

  @override
  String get enterYourLastName => 'Введите свою фамилию';

  @override
  String get error => 'Ошибка';

  @override
  String get firebase_auth_invalid_email => 'Неверный формат email.';

  @override
  String get firebase_auth_user_disabled => 'Учетная запись отключена.';

  @override
  String get firebase_auth_user_not_found => 'Пользователь с таким email не найден.';

  @override
  String get firebase_auth_wrong_password => 'Неверный пароль.';

  @override
  String get firstName => 'Имя:';

  @override
  String get firstNameFormHintText => 'Введите имя';

  @override
  String get itemListAvailability => 'Список чатов доступен только для вошедших в систему';

  @override
  String get itemListEmpty => 'Здесь нет чатов. Попробуйте отправить первое сообщение';

  @override
  String get language => 'Язык';

  @override
  String get lastName => 'Фамилия:';

  @override
  String get lastNameFormHintText => 'Введите фамилию';

  @override
  String get letsStart => 'Давайте начнем';

  @override
  String get lightTheme => 'Светлая тема';

  @override
  String get moreInformationHere => 'Больше информации здесь';

  @override
  String get passwordFormHintText => 'Введите пароль';

  @override
  String get passwordFormValidatorText => 'Минимум 6 символов';

  @override
  String get passwordRepeatFormHintText => 'Введите пароль еще раз';

  @override
  String get passwordsDifferent => 'Пароли должны совпадать';

  @override
  String get profile => 'Профиль';

  @override
  String get resend => 'Повторно отправить';

  @override
  String get resetPassword => 'Сбросить пароль';

  @override
  String get resetPasswordAppBarTitle => 'Сброс пароля';

  @override
  String get resetPasswordButtonText => 'Сбросить пароль';

  @override
  String get resetPasswordScreenAppBarTitle => 'Сброс пароля';

  @override
  String get settings => 'Настройки';

  @override
  String get signIn => 'Войти';

  @override
  String get signOut => 'Выйти';

  @override
  String get signUp => 'Регистрация';

  @override
  String get signUpScreenAppBarTitle => 'Зарегистрироваться';

  @override
  String get successResetPassword => 'Проверьте почту для сброса пароля';

  @override
  String get systemTheme => 'Системная тема';

  @override
  String get typeAMessage => 'Введите сообщение';

  @override
  String get undefinedError => 'Неизвестная ошибка! Попробуйте еще раз или обратитесь в поддержку.';

  @override
  String get undefinedLoginError => 'Неопределенная ошибка при входе.';

  @override
  String get userInformationNotAvailable => 'Информация о пользователе недоступна';

  @override
  String get userNotFoundText => 'Такой email не зарегистрирован!';

  @override
  String get verificationEmailResended => 'Письмо с подтверждением было отправлено на вашу электронную почту.';

  @override
  String get verifyEmailScreenAppBarTitle => 'Верификация Email адреса';

  @override
  String get welcome => 'Добро пожаловать';

  @override
  String get welcomeText => 'RealtimeChat: Приложение для обмена сообщениями в режиме реального времени.';

  @override
  String get wrongEmailOrPassword => 'Неправильный email или пароль. Повторите попытку';

  @override
  String get you => 'Вы';

  @override
  String get yourEmail => 'Ваш Email:';

  @override
  String get search => 'Поиск';

  @override
  String get noUsersFound => 'Пользователи не найдены';

  @override
  String errorCreatingChat(Object error) {
    return 'Ошибка при создании чата: $error';
  }

  @override
  String get currentUserNotFoundOrEmailIsMissing => 'Текущий пользователь не найден или электронная почта отсутствует';

  @override
  String get noMessages => 'Здесь пока нет сообщений';

  @override
  String get startConversation => 'Скажите \"Привет\", чтобы начать разговор';

  @override
  String get startChat => 'Начать чат';

  @override
  String get enter_search_query => 'Введите запрос для поиска';
}
