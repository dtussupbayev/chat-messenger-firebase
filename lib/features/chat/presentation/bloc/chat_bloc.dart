import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:realtime_chat_app/features/chat/domain/entities/message_entity.dart';
import 'package:realtime_chat_app/features/chat/domain/repositories/chat_repository.dart';

part 'chat_bloc.freezed.dart';
part 'chat_event.dart';
part 'chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc({
    required this.chatRepository,
  }) : super(const ChatState()) {
    on<ChatSubscriptionRequested>(_onSubscriptionRequested);
    on<ChatMessageSended>(_onMessageSended);
    on<ChatMessageDeleted>(_onMessageDeleted);
  }

  final IChatRepository chatRepository;

  Future<void> _onSubscriptionRequested(
    ChatSubscriptionRequested event,
    Emitter<ChatState> emit,
  ) async {
    emit(state.copyWith(status: ChatStatus.loading));

    await emit.forEach<List<MessageEntity>>(
      chatRepository.getMessageList(event.chatRoomId),
      onData: (messages) => state.copyWith(status: ChatStatus.success, messages: messages),
      onError: (_, _) => state.copyWith(status: ChatStatus.failure),
    );
  }

  Future<void> _onMessageSended(ChatMessageSended event, Emitter<ChatState> emit) async {
    await chatRepository.sendMessage(
      event.message,
      event.chatRoomId,
    );
  }

  Future<void> _onMessageDeleted(ChatMessageDeleted event, Emitter<ChatState> emit) async {
    await chatRepository.deleteMessage(
      event.message,
      event.chatRoomId,
    );
  }
}
