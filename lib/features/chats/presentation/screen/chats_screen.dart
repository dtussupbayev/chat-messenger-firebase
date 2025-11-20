import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:realtime_chat_app/core/di/get_it.dart';
import 'package:realtime_chat_app/features/chats/domain/use_cases/get_chat_rooms_use_case.dart';
import 'package:realtime_chat_app/features/chats/domain/use_cases/get_user_info_use_case.dart';
import 'package:realtime_chat_app/features/chats/presentation/bloc/chats_bloc.dart';
import 'package:realtime_chat_app/features/chats/presentation/widgets/chat_room_list.dart';
import 'package:realtime_chat_app/features/chats/presentation/widgets/search_button.dart';
import 'package:realtime_chat_app/l10n/app_localizations.dart';

import 'package:realtime_chat_app/features/chats/presentation/widgets/chats_app_bar_menu_button.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  static const routeName = '/chats';

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return BlocProvider(
      create: (context) => ChatsBloc(
        getChatRoomsUseCase: getIt.get<GetChatRoomsUseCase>(),
        getUserInfoUseCase: getIt.get<GetUserInfoUseCase>(),
      )..add(const LoadChats()),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context).chats),
          actions: [
            if (user == null) const SizedBox() else const SearchButton(),
            CMenuButton(user: user),
          ],
        ),
        body: user != null
            ? const ChatRoomList()
            : Center(
                child: Text(
                  AppLocalizations.of(context).itemListAvailability,
                  textAlign: TextAlign.center,
                ),
              ),
      ),
    );
  }
}
