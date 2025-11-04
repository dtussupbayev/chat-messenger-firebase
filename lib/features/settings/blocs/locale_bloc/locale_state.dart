part of 'locale_bloc.dart';

@freezed
abstract class LocaleState with _$LocaleState {
  const factory LocaleState({@LocaleConverter() required Locale locale}) = _LocaleState;

  factory LocaleState.fromJson(Map<String, dynamic> json) => _$LocaleStateFromJson(json);
}
