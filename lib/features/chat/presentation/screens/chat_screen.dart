import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:realtime_chat_app/core/di/get_it.dart';
import 'package:realtime_chat_app/features/chat/domain/repositories/chat_repository.dart';
import 'package:realtime_chat_app/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:realtime_chat_app/features/chat/presentation/widgets/chat_bottom_input_panel.dart';
import 'package:realtime_chat_app/features/chat/presentation/widgets/chat_message_list.dart';
import 'package:realtime_chat_app/l10n/app_localizations.dart';
import 'package:realtimechat_uikit/realtimechat_uikit.dart';

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

  static const routeName = 'chat';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChatBloc(
        chatRepository: getIt.get<IChatRepository>(),
      )..add(ChatSubscriptionRequested(chatRoomId: chatRoomId)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            '$firstName $lastName',
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
        body: _ChatView(chatRoomId: chatRoomId),
      ),
    );
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView({required this.chatRoomId});

  final String chatRoomId;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: _ChatMessagesView(chatRoomId: chatRoomId),
        ),
        ChatBottomInputPanel(chatRoomId: chatRoomId),
      ],
    );
  }
}

class _ChatMessagesView extends StatelessWidget {
  const _ChatMessagesView({required this.chatRoomId});

  final String chatRoomId;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatBloc, ChatState>(
      builder: (context, state) {
        if (state.messages.isEmpty) {
          if (state.status == ChatStatus.loading) {
            return const Center(child: CupertinoActivityIndicator());
          } else if (state.status != ChatStatus.success) {
            return const SizedBox();
          } else {
            final l10n = AppLocalizations.of(context);

            return Center(
                child: Text(l10n.noMessages,
                    style: context.textTheme.bodySmall));
          }
        }
        return ChatMessageList(
            messages: state.messages, chatRoomId: chatRoomId);
      },
    );
  }
}
