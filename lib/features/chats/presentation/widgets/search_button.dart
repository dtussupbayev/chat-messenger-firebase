import 'package:flutter/material.dart';
import 'package:realtime_chat_app/core/di/get_it.dart';
import 'package:realtime_chat_app/features/users_search/presentation/screens/users_search_delegate.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.search),
      onPressed: () {
        showSearch(
          context: context,
          delegate: UsersSearchDelegate(usersSearchBloc: getIt.get()),
        );
      },
    );
  }
}
