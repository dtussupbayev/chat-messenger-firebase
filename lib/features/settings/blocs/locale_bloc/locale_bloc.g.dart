// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locale_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocaleStateImpl _$$LocaleStateImplFromJson(Map<String, dynamic> json) =>
    _$LocaleStateImpl(
      locale: const LocaleConverter().fromJson(json['locale'] as String),
    );

Map<String, dynamic> _$$LocaleStateImplToJson(_$LocaleStateImpl instance) =>
    <String, dynamic>{
      'locale': const LocaleConverter().toJson(instance.locale),
    };
