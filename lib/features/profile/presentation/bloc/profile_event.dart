part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.loadProfileInfo() = LoadProfileInfoEvent;
  const factory ProfileEvent.signOut() = SignOutEvent;
}