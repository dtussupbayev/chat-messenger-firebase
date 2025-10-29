import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:realtime_chat_app/core/di/get_it.dart';
import 'package:realtime_chat_app/core/exceptions/app_exception.dart';
import 'package:realtime_chat_app/features/profile/domain/use_cases/get_profile_info_use_case.dart';
import 'package:realtime_chat_app/features/profile/domain/use_cases/sign_out_use_case.dart';
import 'package:realtime_chat_app/generated/l10n.dart';

part 'profile_event.dart';

part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(ProfileInitial()) {
    on<LoadProfileInfoEvent>(_onLoadProfileInfo);
    on<SignOutEvent>(_onSignOut);
  }

  final GetProfileInfoUseCase _getProfileInfoUseCase = getIt.get<GetProfileInfoUseCase>();
  final SignOutUseCase _signOutUseCase = getIt.get<SignOutUseCase>();

  Future<void> _onLoadProfileInfo(
    LoadProfileInfoEvent event,
    Emitter<ProfileState> emit,
  ) async {
    emit(ProfileLoading());
    try {
      final userEntity = await _getProfileInfoUseCase.call();
      emit(
        ProfileLoaded(
          email: userEntity.email,
          firstName: userEntity.firstName,
          lastName: userEntity.lastName,
        ),
      );
    } on AppException catch (e) {
      emit(ProfileError(e.message));
    } catch (e) {
      emit(ProfileError('${S.current.error}:$e'));
    }
  }

  Future<void> _onSignOut(
    SignOutEvent event,
    Emitter<ProfileState> emit,
  ) async {
    try {
      await _signOutUseCase.call();
      emit(ProfileSignedOut());
    } catch (e) {
      emit(ProfileError('${S.current.error}:$e'));
    }
  }
}
