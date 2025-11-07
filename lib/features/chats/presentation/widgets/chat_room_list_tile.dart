import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:realtime_chat_app/core/router/app_router.dart';
import 'package:realtime_chat_app/features/chats/presentation/bloc/chats_bloc.dart';
import 'package:realtime_chat_app/l10n/app_localizations.dart';
import 'package:realtimechat_uikit/realtimechat_uikit.dart';

class ChatRoomListTile extends StatefulWidget {
  const ChatRoomListTile({
    super.key,
    required this.lastMessage,
    required this.lastMessageSendBy,
    required this.chatRoomId,
    required this.time,
  });

  final String lastMessage;
  final String lastMessageSendBy;
  final String chatRoomId;
  final String time;

  @override
  State<ChatRoomListTile> createState() => _ChatRoomListTileState();
}

class _ChatRoomListTileState extends State<ChatRoomListTile> {
  final myUid = FirebaseAuth.instance.currentUser?.uid ?? '';

  @override
  void initState() {
    super.initState();
    context.read<ChatsBloc>().add(GetUserInfo(chatRoomId: widget.chatRoomId, myUid: myUid));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatsBloc, ChatsState>(
      builder: (context, state) {
        final userId = widget.chatRoomId.replaceFirst(myUid, '').replaceFirst('_', '');
        final userData = state.users[userId] ?? UserData.empty();
        return InkWell(
          onTap: () {
            ChatRoute(
              chatRoomId: widget.chatRoomId,
              firstName: userData.firstName,
              lastName: userData.lastName,
            ).go(context);
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
            child: Stack(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(radius: 30, child: Text(userData.firstLetters)),
                    const SizedBox(width: 10.0),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${userData.firstName} ${userData.lastName}',
                            style: const TextStyle(fontSize: 17.0, fontWeight: FontWeight.w500),
                          ),
                          Flexible(
                            child: Text(
                              '${widget.lastMessageSendBy == myUid ? '${AppLocalizations.of(context).you}: ' : ''}${widget.lastMessage}',
                              overflow: TextOverflow.ellipsis,
                              style: context.textTheme.bodyMedium?.copyWith(
                                color: context.colorScheme.secondary,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Text(widget.time, style: context.textTheme.bodyMedium),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
