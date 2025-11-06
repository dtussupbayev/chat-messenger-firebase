import 'dart:async';
import 'dart:io';
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:realtime_chat_app/features/settings/utilities/web_platform_locale.dart';
import 'package:realtime_chat_app/l10n/app_localizations.dart';

import 'locale_converter.dart';

part 'locale_bloc.freezed.dart';

part 'locale_bloc.g.dart';

part 'locale_event.dart';

part 'locale_state.dart';

class LocaleBloc extends HydratedBloc<LocaleEvent, LocaleState> {
  LocaleBloc() : super(LocaleState(locale: _getInitialLocale())) {
    on<UpdateLocale>(_onUpdateLocale);
    on<ClearState>(_onClearState);
  }

  static Locale _getInitialLocale() {
    String localeName;
    if (kIsWeb) {
      localeName = getWebLocale() ?? '';
    } else {
      localeName = Platform.localeName;
    }

    return AppLocalizations.supportedLocales.contains(Locale(localeName))
        ? Locale(localeName)
        : const Locale('ru');
  }

  @override
  LocaleState? fromJson(Map<String, dynamic> json) {
    return LocaleState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(LocaleState state) {
    return state.toJson();
  }

  Future<void> _onUpdateLocale(UpdateLocale event, Emitter<LocaleState> emit) async {
    if (event.locale == null) return;
    emit(LocaleState(locale: event.locale!));
  }

  Future<void> _onClearState(ClearState event, Emitter<LocaleState> emit) async {
    await HydratedBloc.storage.delete(storageToken);
    emit(LocaleState(locale: _getInitialLocale()));
  }
}
