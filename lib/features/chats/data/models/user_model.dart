import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:realtime_chat_app/features/chats/domain/entities/user.dart';

class UserModel extends User {
  const UserModel({
    required super.uid,
    required super.firstName,
    required super.lastName,
    required super.email,
  });

  factory UserModel.fromSnapshot(DocumentSnapshot snapshot) {
    final data = snapshot.data()! as Map<String, dynamic>;
    return UserModel(
      uid: data['uid'] ?? '',
      firstName: data['firstName'] ?? '',
      lastName: data['lastName'] ?? '',
      email: data['email'] ?? '',
    );
  }
}
