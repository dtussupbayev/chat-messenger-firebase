import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:realtime_chat_app/features/chats/presentation/bloc/chats_bloc.dart';
import 'package:realtime_chat_app/features/chats/presentation/widgets/chat_room_list_tile.dart';
import 'package:realtime_chat_app/generated/l10n.dart';

class ChatRoomList extends StatelessWidget {
  const ChatRoomList({super.key});

  static const String kLastMessage = 'lastMessage';
  static const String kLastMessageSendBy = 'lastMessageSendBy';
  static const String kLastMessageSendTs = 'lastMessageSendTs';

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatsBloc, ChatsState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(child: CupertinoActivityIndicator());
        }

        return StreamBuilder(
          stream: state.chatRoomsStream,
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CupertinoActivityIndicator());
            }

            if (snapshot.hasError) {
              return Center(
                child: Text('${S.current.error}: ${snapshot.error}'),
              );
            }

            final chatRooms = snapshot.data;

            if (chatRooms == null || chatRooms.isEmpty) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60.0),
                child: Center(
                  child: Text(
                    S.of(context).itemListEmpty,
                    textAlign: TextAlign.center,
                  ),
                ),
              );
            }

            return ListView.builder(
              padding: const EdgeInsets.only(top: 10),
              itemCount: chatRooms.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final room = chatRooms[index];
                return ChatRoomListTile(
                  lastMessage: room.lastMessage,
                  lastMessageSendBy: room.lastMessageSendBy ?? '',
                  chatRoomId: room.id,
                  time: room.lastMessageSendTs,
                );
              },
            );
          },
        );
      },
    );
  }
}
