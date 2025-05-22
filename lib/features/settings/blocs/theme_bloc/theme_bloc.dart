import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'theme_bloc.freezed.dart';

part 'theme_bloc.g.dart';

part 'theme_event.dart';

part 'theme_state.dart';

class ThemeBloc extends HydratedBloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(const ThemeState(themeMode: ThemeMode.system)) {
    on<UpdateThemeEvent>(_onUpdateTheme);
  }

  Future<void> _onUpdateTheme(
    UpdateThemeEvent event,
    Emitter<ThemeState> emit,
  ) async {
    emit(ThemeState(themeMode: event.themeMode));
  }

  @override
  ThemeState? fromJson(Map<String, dynamic> json) {
    return ThemeState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(ThemeState state) {
    return state.toJson();
  }
}
