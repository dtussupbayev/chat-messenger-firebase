import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:intl/intl.dart';

abstract class UsersSearchRemoteDataSource {
  Future<List<DocumentSnapshot>> searchUsers(String query);

  Future<String> createChatRoom(
    String currentUserId,
    String currentUserEmail,
    User currentUserData,
    String selectedUserId,
    String selectedUserEmail,
  );
}

class UsersSearchRemoteDataSourceImpl implements UsersSearchRemoteDataSource {
  UsersSearchRemoteDataSourceImpl({required this.firestore, required this.auth});

  final FirebaseFirestore firestore;
  final FirebaseAuth auth;

  @override
  Future<List<DocumentSnapshot>> searchUsers(String query) async {
    final String lowercaseQuery = query.toLowerCase();
    final currentUserUid = auth.currentUser?.uid;

    if (currentUserUid == null) {
      throw Exception('User not logged in');
    }

    final QuerySnapshot querySnapshot = await firestore
        .collection('users')
        .where('searchKeywords', arrayContains: lowercaseQuery)
        .get();

    return querySnapshot.docs.where((doc) => doc.id != currentUserUid).toList();
  }

  @override
  Future<String> createChatRoom(
    String currentUserId,
    String currentUserEmail,
    User currentUserData,
    String selectedUserId,
    String selectedUserEmail,
  ) async {
    final chatRoomId = _getChatRoomIdByUids(currentUserId, selectedUserId);
    final chatRoomDoc = firestore.collection('chatRooms').doc(chatRoomId);
    final snapshot = await chatRoomDoc.get();

    if (!snapshot.exists) {
      final Map<String, dynamic> chatRoomInfoMap = {
        'users': [currentUserEmail, selectedUserEmail],
        'userIds': [currentUserId, selectedUserId],
        'lastMessage': '',
        'lastMessageSendTs': DateFormat('h:mma').format(DateTime.now()),
        'time': FieldValue.serverTimestamp(),
        'lastMessageSendBy': '',
      };
      await chatRoomDoc.set(chatRoomInfoMap);
    }
    return chatRoomId;
  }

  String _getChatRoomIdByUids(String uid1, String uid2) {
    if (uid1.compareTo(uid2) > 0) {
      return '${uid1}_$uid2';
    }
    return '${uid2}_$uid1';
  }
}
