import 'package:equatable/equatable.dart';
import 'package:realtime_chat_app/core/domain/use_case/base_use_case.dart';
import 'package:realtime_chat_app/features/chats/domain/entities/user.dart';
import 'package:realtime_chat_app/features/chats/domain/repositories/chats_repository.dart';

class GetUserInfoParams extends Equatable {
  const GetUserInfoParams({required this.uid});

  final String uid;

  @override
  List<Object?> get props => [uid];
}

class GetUserInfoUseCase
    implements BaseUseCase<GetUserInfoParams, Future<User?>> {
  GetUserInfoUseCase({required this.repository});

  final ChatsRepository repository;

  @override
  Future<User?> execute(GetUserInfoParams params) {
    return repository.getUserInfo(params.uid);
  }
}
