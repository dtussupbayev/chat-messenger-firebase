part of 'locale_bloc.dart';

@freezed
class LocaleEvent with _$LocaleEvent {
  const factory LocaleEvent.updateLocale(Locale? locale) = UpdateLocale;
  const factory LocaleEvent.clearState() = ClearState;
}