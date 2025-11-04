part of 'locale_bloc.dart';

@freezed
sealed class LocaleEvent with _$LocaleEvent {
  const factory LocaleEvent.updateLocale(Locale? locale) = UpdateLocale;

  const factory LocaleEvent.clearState() = ClearState;
}
