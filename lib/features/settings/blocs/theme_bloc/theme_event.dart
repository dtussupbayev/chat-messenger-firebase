part of 'theme_bloc.dart';

@freezed
class ThemeEvent with _$ThemeEvent {
  const factory ThemeEvent.updateTheme(ThemeMode themeMode) = UpdateThemeEvent;
}
