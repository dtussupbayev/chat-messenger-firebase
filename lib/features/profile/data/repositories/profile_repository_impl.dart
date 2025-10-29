import 'package:realtime_chat_app/features/profile/data/data_sources/profile_remote_data_source.dart';
import 'package:realtime_chat_app/features/profile/domain/entities/user_entity.dart';
import 'package:realtime_chat_app/features/profile/domain/repositories/profile_repository.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  ProfileRepositoryImpl({required this.remoteDataSource});

  final ProfileRemoteDataSource remoteDataSource;

  @override
  Future<UserEntity> getProfileInfo(String uid) async {
    return remoteDataSource.getProfileInfo(uid);
  }

  @override
  Future<void> signOut() async {
    await remoteDataSource.signOut();
  }
}
