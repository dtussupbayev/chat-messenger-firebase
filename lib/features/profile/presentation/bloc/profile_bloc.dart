import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:realtime_chat_app/core/di/get_it.dart';
import 'package:realtime_chat_app/core/exceptions/app_exception.dart';
import 'package:realtime_chat_app/features/profile/domain/use_cases/get_profile_info_use_case.dart';
import 'package:realtime_chat_app/features/profile/domain/use_cases/sign_out_use_case.dart';
import 'package:realtime_chat_app/generated/l10n.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(const ProfileState.initial()) {
    on<LoadProfileInfoEvent>(_onLoadProfileInfo);
    on<SignOutEvent>(_onSignOut);
  }

  final GetProfileInfoUseCase _getProfileInfoUseCase = getIt.get<GetProfileInfoUseCase>();
  final SignOutUseCase _signOutUseCase = getIt.get<SignOutUseCase>();

  Future<void> _onLoadProfileInfo(
    LoadProfileInfoEvent event,
    Emitter<ProfileState> emit,
  ) async {
    emit(const ProfileState.loading());
    try {
      final userEntity = await _getProfileInfoUseCase.call();
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
      emit(ProfileState.error('${S.current.error}:$e'));
    }
  }

  Future<void> _onSignOut(
    SignOutEvent event,
    Emitter<ProfileState> emit,
  ) async {
    try {
      await _signOutUseCase.call();
      emit(const ProfileState.signedOut());
    } catch (e) {
      emit(ProfileState.error('${S.current.error}:$e'));
    }
  }
}