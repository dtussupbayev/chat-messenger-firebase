part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = ProfileInitial;
  const factory ProfileState.loading() = ProfileLoading;
  const factory ProfileState.loaded({
    required String email,
    required String firstName,
    required String lastName,
  }) = ProfileLoaded;
  const factory ProfileState.signedOut() = ProfileSignedOut;
  const factory ProfileState.error(String message) = ProfileError;
}
