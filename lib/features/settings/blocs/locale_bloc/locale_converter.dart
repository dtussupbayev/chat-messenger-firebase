import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

class LocaleConverter implements JsonConverter<Locale, String> {
  const LocaleConverter();

  @override
  Locale fromJson(String json) {
    return Locale(json);
  }

  @override
  String toJson(Locale locale) {
    return locale.toString();
  }
}
