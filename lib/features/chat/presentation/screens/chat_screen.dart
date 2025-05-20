import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:realtime_chat_app/core/service_locator/service_locator.dart';
import 'package:realtime_chat_app/core/themes/app_theme_extension.dart';
import 'package:realtime_chat_app/features/chat/domain/use_cases/delete_message_use_case.dart';
import 'package:realtime_chat_app/features/chat/domain/use_cases/get_message_list_use_case.dart';
import 'package:realtime_chat_app/features/chat/domain/use_cases/send_message_use_case.dart';
import 'package:realtime_chat_app/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:realtime_chat_app/features/chat/presentation/widgets/chat_bottom_input_panel.dart';
import 'package:realtime_chat_app/features/chat/presentation/widgets/chat_message_list.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({
    super.key,
    required this.chatRoomId,
    required this.firstName,
    required this.lastName,
  });
  final String chatRoomId;
  final String firstName;
  final String lastName;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChatBloc(
        getMessageListUseCase: serviceLocator.get<GetMessageListUseCase>(),
        sendMessageUseCase: serviceLocator.get<SendMessageUseCase>(),
        deleteMessageUseCase: serviceLocator.get<DeleteMessageUseCase>(),
      )..add(ChatSubscriptionRequested(chatRoomId: chatRoomId)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            '$firstName $lastName',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: BlocBuilder<ChatBloc, ChatState>(
                builder: (context, state) {
                  if (state.messages.isEmpty) {
                    if (state.status == ChatStatus.loading) {
                      return const Center(child: CupertinoActivityIndicator());
                    } else if (state.status != ChatStatus.success) {
                      return const SizedBox();
                    } else {
                      return Center(
                        child: Text(
                          'Empty',
                          style: context.textTheme.bodySmall,
                        ),
                      );
                    }
                  }
                  return ChatMessageList(
                    messages: state.messages,
                    chatRoomId: chatRoomId,
                  );
                },
              ),
            ),
            ChatBottomInputPanel(
              chatRoomId: chatRoomId,
            ),
          ],
        ),
      ),
    );
  }

  static const routeName = 'chat';
}
