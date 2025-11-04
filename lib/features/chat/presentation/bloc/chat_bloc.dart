import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:realtime_chat_app/features/chat/domain/entities/message_entity.dart';
import 'package:realtime_chat_app/features/chat/domain/use_cases/delete_message_use_case.dart';
import 'package:realtime_chat_app/features/chat/domain/use_cases/get_message_list_use_case.dart';
import 'package:realtime_chat_app/features/chat/domain/use_cases/send_message_use_case.dart';

part 'chat_event.dart';
part 'chat_state.dart';
part 'chat_bloc.freezed.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc({
    required this.getMessageListUseCase,
    required this.sendMessageUseCase,
    required this.deleteMessageUseCase,
  }) : super(const ChatState()) {
    on<ChatSubscriptionRequested>(_onSubscriptionRequested);
    on<ChatMessageSended>(_onMessageSended);
    on<ChatMessageDeleted>(_onMessageDeleted);
  }

  final GetMessageListUseCase getMessageListUseCase;
  final SendMessageUseCase sendMessageUseCase;
  final DeleteMessageUseCase deleteMessageUseCase;

  Future<void> _onSubscriptionRequested(
    ChatSubscriptionRequested event,
    Emitter<ChatState> emit,
  ) async {
    emit(state.copyWith(status: ChatStatus.loading));

    await emit.forEach<List<MessageEntity>>(
      getMessageListUseCase.execute(event.chatRoomId),
      onData: (messages) =>
          state.copyWith(status: ChatStatus.success, messages: messages),
      onError: (_, _) => state.copyWith(status: ChatStatus.failure),
    );
  }

  Future<void> _onMessageSended(
    ChatMessageSended event,
    Emitter<ChatState> emit,
  ) async {
    await sendMessageUseCase.execute(
      SendMessageParams(message: event.message, chatRoomId: event.chatRoomId),
    );
  }

  Future<void> _onMessageDeleted(
    ChatMessageDeleted event,
    Emitter<ChatState> emit,
  ) async {
    await deleteMessageUseCase.execute(
      DeleteMessageParams(message: event.message, chatRoomId: event.chatRoomId),
    );
  }
}