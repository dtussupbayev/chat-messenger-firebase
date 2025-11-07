// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ThemeState _$ThemeStateFromJson(Map<String, dynamic> json) =>
    _ThemeState(themeMode: $enumDecode(_$ThemeModeEnumMap, json['themeMode']));

Map<String, dynamic> _$ThemeStateToJson(_ThemeState instance) =>
    <String, dynamic>{'themeMode': _$ThemeModeEnumMap[instance.themeMode]!};

const _$ThemeModeEnumMap = {
  ThemeMode.system: 'system',
  ThemeMode.light: 'light',
  ThemeMode.dark: 'dark',
};
