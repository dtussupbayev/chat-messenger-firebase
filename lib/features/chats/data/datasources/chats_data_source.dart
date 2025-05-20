import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:realtime_chat_app/features/chats/domain/entities/chat_room.dart';
import 'package:realtime_chat_app/features/chats/domain/entities/user.dart';
import 'package:realtime_chat_app/features/chats/data/models/chat_room_model.dart';
import 'package:realtime_chat_app/features/chats/data/models/user_model.dart';

abstract class ChatsDataSource {
  Future<Stream<List<ChatRoom>>> getChatRooms();

  Future<User?> getUserInfo(String uid);
}

class ChatsFirebaseDataSource implements ChatsDataSource {
  ChatsFirebaseDataSource({
    FirebaseFirestore? firestore,
    firebase_auth.FirebaseAuth? auth,
  })  : _firestore = firestore ?? FirebaseFirestore.instance,
        _auth = auth ?? firebase_auth.FirebaseAuth.instance;

  final FirebaseFirestore _firestore;
  final firebase_auth.FirebaseAuth _auth;

  @override
  Future<Stream<List<ChatRoom>>> getChatRooms() async {
    final firebase_auth.User? user = _auth.currentUser;

    final Stream<QuerySnapshot> snapshots = _firestore
        .collection('chatRooms')
        .orderBy('time', descending: true)
        .where('users', arrayContains: user?.email)
        .snapshots();

    return snapshots.map((snapshot) {
      return snapshot.docs.map(ChatRoomModel.fromSnapshot).toList();
    });
  }

  @override
  Future<User?> getUserInfo(String uid) async {
    final querySnapshot =
        await _firestore.collection('users').where('uid', isEqualTo: uid).get();
    if (querySnapshot.docs.isNotEmpty) {
      return UserModel.fromSnapshot(querySnapshot.docs.first);
    } else {
      return null;
    }
  }
}
