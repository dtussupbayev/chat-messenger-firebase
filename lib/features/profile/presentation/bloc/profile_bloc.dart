import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:realtime_chat_app/core/exceptions/app_exception.dart';
import 'package:realtime_chat_app/core/locale_helper.dart';
import 'package:realtime_chat_app/features/profile/domain/repositories/profile_repository.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {

  ProfileBloc({
    required ProfileRepository profileRepository,
    required FirebaseAuth firebaseAuth,
  })
      : _profileRepository = profileRepository,
        _auth = firebaseAuth,
        super(const ProfileState.initial()) {
    on<LoadProfileInfoEvent>(_onLoadProfileInfo);
    on<SignOutEvent>(_onSignOut);
  }

  final ProfileRepository _profileRepository;
  final FirebaseAuth _auth;

  Future<void> _onLoadProfileInfo(LoadProfileInfoEvent event,
      Emitter<ProfileState> emit,) async {
    emit(const ProfileState.loading());
    try {
      final user = _auth.currentUser;
      if (user == null) {
        throw const AppException('User not logged in');
      }
      final userEntity = await _profileRepository.getProfileInfo(user.uid);
      emit(
        ProfileState.loaded(
          email: userEntity.email,
          firstName: userEntity.firstName,
          lastName: userEntity.lastName,
        ),
      );
    } on AppException catch (e) {
      emit(ProfileState.error(e.message));
    } catch (e) {
      emit(ProfileState.error('${LocaleStrings.current.error}:$e'));
    }
  }

  Future<void> _onSignOut(SignOutEvent event,
      Emitter<ProfileState> emit,) async {
    try {
      await _profileRepository.signOut();
      emit(const ProfileState.signedOut());
    } catch (e) {
      emit(ProfileState.error('${LocaleStrings.current.error}:$e'));
    }
  }
}
