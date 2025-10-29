import 'package:firebase_auth/firebase_auth.dart';
import 'package:realtime_chat_app/core/exceptions/app_exception.dart';
import 'package:realtime_chat_app/features/profile/domain/entities/user_entity.dart';
import 'package:realtime_chat_app/features/profile/domain/repositories/profile_repository.dart';

class GetProfileInfoUseCase {
  GetProfileInfoUseCase({required this.repository});

  final ProfileRepository repository;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserEntity> call() async {
    final User? user = _auth.currentUser;
    if (user != null) {
      return repository.getProfileInfo(user.uid);
    } else {
      throw const AppException('User not logged in');
    }
  }
}
