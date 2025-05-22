// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ThemeStateImpl _$$ThemeStateImplFromJson(Map<String, dynamic> json) =>
    _$ThemeStateImpl(
      themeMode: $enumDecode(_$ThemeModeEnumMap, json['themeMode']),
    );

Map<String, dynamic> _$$ThemeStateImplToJson(_$ThemeStateImpl instance) =>
    <String, dynamic>{'themeMode': _$ThemeModeEnumMap[instance.themeMode]};

const _$ThemeModeEnumMap = {
  ThemeMode.system: 'system',
  ThemeMode.light: 'light',
  ThemeMode.dark: 'dark',
};
