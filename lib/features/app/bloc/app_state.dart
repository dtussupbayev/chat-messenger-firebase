part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.initial() = AppInitial;

  const factory AppState.splash() = AppSplash;

  const factory AppState.onBoardingRequired() = AppOnBoardingRequired;

  const factory AppState.authenticated(User user) = AppAuthenticated;

  const factory AppState.unAuthenticated() = AppUnauthenticated;

  const factory AppState.notVerified() = AppNotVerified;
}
