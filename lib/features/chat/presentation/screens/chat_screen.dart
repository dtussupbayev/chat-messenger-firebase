import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:realtime_chat_app/core/di/get_it.dart';
import 'package:realtime_chat_app/features/chat/domain/use_cases/delete_message_use_case.dart';
import 'package:realtime_chat_app/features/chat/domain/use_cases/get_message_list_use_case.dart';
import 'package:realtime_chat_app/features/chat/domain/use_cases/send_message_use_case.dart';
import 'package:realtime_chat_app/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:realtime_chat_app/features/chat/presentation/widgets/chat_bottom_input_panel.dart';
import 'package:realtime_chat_app/features/chat/presentation/widgets/chat_message_list.dart';
// import 'package:realtimechat_uikit/realtimechat_uikit.dart'; // unused here
import 'package:realtime_chat_app/l10n/app_localizations.dart';

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
        getMessageListUseCase: getIt.get<GetMessageListUseCase>(),
        sendMessageUseCase: getIt.get<SendMessageUseCase>(),
        deleteMessageUseCase: getIt.get<DeleteMessageUseCase>(),
      )..add(ChatSubscriptionRequested(chatRoomId: chatRoomId)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            '$firstName $lastName',
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
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
                      final l10n = AppLocalizations.of(context);

                      final title = l10n.noMessages;
                      final subtitle = l10n.startConversation;
                      final actionLabel = l10n.startChat;

                      return Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.chat_bubble_outline,
                                size: 64,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              const SizedBox(height: 16),
                              Text(
                                title,
                                style: Theme.of(context).textTheme.titleMedium,
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                subtitle,
                                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                  color: Theme.of(context).hintColor,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 16),
                              ElevatedButton.icon(
                                onPressed: () {
                                  // Focus the input so the user can start typing immediately.
                                  // The ChatBottomInputPanel should react to focus changes.
                                  FocusScope.of(context).nextFocus();
                                },
                                icon: const Icon(Icons.send),
                                label: Text(actionLabel),
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }
                  }
                  return ChatMessageList(messages: state.messages, chatRoomId: chatRoomId);
                },
              ),
            ),
            ChatBottomInputPanel(chatRoomId: chatRoomId),
          ],
        ),
      ),
    );
  }

  static const routeName = 'chat';
}
