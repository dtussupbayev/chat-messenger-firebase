import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../services/firestore_service.dart';
import '../chat/chat_screen.dart';
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
  final AsyncSnapshot<QuerySnapshot<Object?>> snapshot;
  const SearchResultListView({
    super.key,
    required this.snapshot,
  });

  @override
  State<SearchResultListView> createState() => _SearchResultListViewState();
}

class _SearchResultListViewState extends State<SearchResultListView> {
  final UsersSearchController searchDelegateController = UsersSearchController();

  @override
  Widget build(BuildContext context) {
    return (widget.snapshot.data!.docs.isNotEmpty)
        ? ListView.builder(
            itemCount: widget.snapshot.data!.docs.length,
            itemBuilder: (context, index) {
              Map<String, dynamic> userData = searchDelegateController.getUserData(
                widget.snapshot,
                index,
              );

              String firstName = userData['firstName'] ?? '';
              String lastName = userData['lastName'] ?? '';
              String uid = userData['uid'] ?? '';
              String email = userData['email'] ?? '';

              String firstLetters = searchDelegateController.getFirstLetters(
                firstName,
                lastName,
              );

              return GestureDetector(
                onTap: () async {
                  await searchDelegateController.createChatRoom(uid, email);

                  context.mounted
                      ? Navigator.restorablePushNamed(context, ChatScreen.routeName,
                          arguments: [uid, firstName, lastName])
                      : null;
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
        : Center(
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("Show all users"),
            ),
          );
  }
}
