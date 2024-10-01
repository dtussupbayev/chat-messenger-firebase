import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/services/firestore_service.dart';
import '../chat/screens/chat_screen.dart';
import 'users_search_controller.dart';

class UsersSearchDelegate extends SearchDelegate<String> {
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
    // Perform the search and display the results
    return buildSuggestions(context);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Implement suggestions based on the query
    return FutureBuilder(
      future: FirestoreService.searchUsers(query),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text('Error: ${snapshot.error}'),
          );
        } else {
          return SearchResultListView(
            snapshot: snapshot,
          );
        }
      },
    );
  }
}

class SearchResultListView extends StatefulWidget {
  const SearchResultListView({
    super.key,
    required this.snapshot,
  });
  final AsyncSnapshot<QuerySnapshot<Object?>> snapshot;

  @override
  State<SearchResultListView> createState() => _SearchResultListViewState();
}

class _SearchResultListViewState extends State<SearchResultListView> {
  final UsersSearchController searchDelegateController =
      UsersSearchController();

  @override
  Widget build(BuildContext context) {
    return (widget.snapshot.data!.docs.isNotEmpty)
        ? ListView.builder(
            itemCount: widget.snapshot.data!.docs.length,
            itemBuilder: (context, index) {
              final Map<String, dynamic> userData =
                  searchDelegateController.getUserData(
                widget.snapshot,
                index,
              );

              final String firstName = userData['firstName'] ?? '';
              final String lastName = userData['lastName'] ?? '';
              final String uid = userData['uid'] ?? '';
              final String email = userData['email'] ?? '';

              final String firstLetters =
                  searchDelegateController.getFirstLetters(
                firstName,
                lastName,
              );

              return GestureDetector(
                onTap: () async {
                  await searchDelegateController.createChatRoom(uid, email);

                  if (context.mounted) {
                    context.goNamed(
                      ChatScreen.routeName,
                      pathParameters: {'uid': uid},
                      queryParameters: {
                        'firstName': firstName,
                        'lastName': lastName,
                      },
                    );
                  }
                },
                child: ListTile(
                  leading: CircleAvatar(
                    child: Text(firstLetters),
                  ),
                  title: Text('$firstName $lastName'),
                ),
              );
            },
          )
        : const Center(
            child: Text(''),
          );
  }
}
