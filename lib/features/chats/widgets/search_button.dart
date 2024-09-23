import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/users_search/users_search_delegate.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.search),
      onPressed: () {
        showSearch(context: context, delegate: UsersSearchDelegate());
      },
    );
  }
}
