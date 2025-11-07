import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:realtime_chat_app/core/router/app_router.dart';
import 'package:realtime_chat_app/features/users_search/presentation/bloc/users_search_bloc.dart';
import 'package:realtime_chat_app/l10n/app_localizations.dart';
import 'package:realtime_chat_app/core/locale_helper.dart';

class UsersSearchDelegate extends SearchDelegate<String> {
  UsersSearchDelegate({required this.usersSearchBloc});

  final UsersSearchBloc usersSearchBloc;

  @override
  String get searchFieldLabel => LocaleStrings.current.search;

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, '');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return _buildSearchResults(context);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return _buildSearchResults(context);
  }

  Widget _buildSearchResults(BuildContext context) {
    if (query.trim().isEmpty) {
      return Center(child: Text(AppLocalizations.of(context).enter_search_query));
    }
    usersSearchBloc.add(UsersSearchEvent.searchUsers(query));
    return BlocListener<UsersSearchBloc, UsersSearchState>(
      bloc: usersSearchBloc,
      listener: (context, state) {
        switch (state) {
          case ChatRoomCreated():
            ChatRoute(
              chatRoomId: state.chatRoomId,
              firstName: state.user.firstName,
              lastName: state.user.lastName,
            ).go(context);
          case Error():
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.message)));
          default:
        }
      },
      child: BlocBuilder<UsersSearchBloc, UsersSearchState>(
        bloc: usersSearchBloc,
        builder: (context, state) {
          switch (state) {
            case Initial():
              return Container();
            case Loading():
              return const Center(child: CupertinoActivityIndicator());
            case Success():
              final users = state.users;
              if (users.isEmpty) {
                return Center(child: Text(LocaleStrings.current.noUsersFound));
              }
              return ListView.builder(
                itemCount: users.length,
                itemBuilder: (context, index) {
                  final user = users[index];
                  return ListTile(
                    leading: CircleAvatar(child: Text(user.firstLetters)),
                    title: Text(user.fullName),
                    subtitle: Text(user.email),
                    onTap: () {
                      usersSearchBloc.add(UsersSearchEvent.createChatRoom(user));
                    },
                  );
                },
              );
            case Error():
              return Center(child: Text('${LocaleStrings.current.error}: ${state.message}'));
            case ChatRoomCreated():
              return const Center(child: CupertinoActivityIndicator());
          }
        },
      ),
    );
  }
}
