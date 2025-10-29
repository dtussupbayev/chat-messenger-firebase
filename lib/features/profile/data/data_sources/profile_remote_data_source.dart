import 'package:realtime_chat_app/features/profile/data/models/user_model.dart';

abstract class ProfileRemoteDataSource {
  Future<UserModel> getProfileInfo(String uid);
  Future<void> signOut();
}