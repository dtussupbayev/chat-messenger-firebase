import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:realtime_chat_app/features/users_search/domain/entities/user_entity.dart';
import 'package:realtime_chat_app/features/users_search/domain/usecases/create_chat_room_usecase.dart';
import 'package:realtime_chat_app/features/users_search/domain/usecases/search_users_usecase.dart';
import 'package:realtime_chat_app/generated/l10n.dart';

import '../chat/presentation/screens/chat_screen.dart';

class UsersSearchDelegate extends SearchDelegate<String> {
  UsersSearchDelegate({
    required this.searchUsersUseCase,
    required this.createChatRoomUseCase,
  });

  final SearchUsersUseCase searchUsersUseCase;
  final CreateChatRoomUseCase createChatRoomUseCase;

  @override
  String get searchFieldLabel => S.current.search;

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
      return Center(child: Text(S.of(context).enter_search_query));
    }
    return FutureBuilder<List<UserEntity>>(
      future: searchUsersUseCase.execute(query),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CupertinoActivityIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('${S.current.error}: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return Center(child: Text(S.current.noUsersFound));
        } else {
          final users = snapshot.data!;
          return ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              final user = users[index];
              return ListTile(
                leading: CircleAvatar(child: Text(user.firstLetters)),
                title: Text(user.fullName),
                subtitle: Text(user.email),
                onTap: () async {
                  try {
                    final chatRoomId = await createChatRoomUseCase.execute(
                      user,
                    );
                    if (context.mounted) {
                      context.goNamed(
                        ChatScreen.routeName,
                        pathParameters: {'chatRoomId': chatRoomId},
                        queryParameters: {
                          'firstName': user.firstName,
                          'lastName': user.lastName,
                        },
                      );
                    }
                  } catch (e) {
                    if (context.mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(S.current.errorCreatingChat(e))),
                      );
                    }
                  }
                },
              );
            },
          );
        }
      },
    );
  }
}
