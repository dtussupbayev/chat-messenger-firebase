part of 'theme_bloc.dart';

@freezed
sealed class ThemeEvent with _$ThemeEvent {
  const factory ThemeEvent.updateTheme(ThemeMode themeMode) = UpdateThemeEvent;
}
