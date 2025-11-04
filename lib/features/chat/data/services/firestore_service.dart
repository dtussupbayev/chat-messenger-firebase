import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  static Future<void> updateLastMessageSended(
    String chatRoomId,
    Map<String, dynamic> lastMessageInfoMap,
  ) {
    return FirebaseFirestore.instance
        .collection('chatRooms')
        .doc(chatRoomId)
        .set(lastMessageInfoMap, SetOptions(merge: true));
  }
}
