import 'package:realtime_chat_app/features/profile/domain/repositories/profile_repository.dart';

class SignOutUseCase {
  const SignOutUseCase({required this.repository});

  final ProfileRepository repository;

  Future<void> call() async {
    await repository.signOut();
  }
}