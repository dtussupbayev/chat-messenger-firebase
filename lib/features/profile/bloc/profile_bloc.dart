import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:realtime_chat_app/generated/l10n.dart';

part 'profile_event.dart';

part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(ProfileInitial()) {
    on<LoadProfileInfoEvent>(_onLoadProfileInfo);
    on<SignOutEvent>(_onSignOut);
  }

  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> _onLoadProfileInfo(
    LoadProfileInfoEvent event,
    Emitter<ProfileState> emit,
  ) async {
    emit(ProfileLoading());
    try {
      final User? user = _auth.currentUser;
      if (user != null) {
        final snapshot = await FirebaseFirestore.instance
            .collection('users')
            .doc(user.uid)
            .get();

        final data = snapshot.data();
        if (data != null) {
          emit(
            ProfileLoaded(
              email: user.email ?? '',
              firstName: data['firstName'] ?? '',
              lastName: data['lastName'] ?? '',
            ),
          );
        } else {
          add(SignOutEvent());
          emit(ProfileError(S.current.userInformationNotAvailable));
        }
      } else {
        emit(ProfileError(S.current.userInformationNotAvailable));
      }
    } catch (e) {
      emit(ProfileError('${S.current.error}:$e'));
    }
  }

  Future<void> _onSignOut(
    SignOutEvent event,
    Emitter<ProfileState> emit,
  ) async {
    try {
      await _auth.signOut();
      emit(ProfileSignedOut());
    } catch (e) {
      emit(ProfileError('${S.current.error}:$e'));
    }
  }
}
