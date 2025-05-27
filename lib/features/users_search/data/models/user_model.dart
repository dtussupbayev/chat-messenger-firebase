import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:realtime_chat_app/features/users_search/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  const UserModel({
    required super.uid,
    required super.firstName,
    required super.lastName,
    required super.email,
  });

  factory UserModel.fromSnapshot(DocumentSnapshot snap) {
    final data = snap.data()! as Map<String, dynamic>;
    return UserModel(
      uid: data['uid'] ?? snap.id,
      firstName: data['firstName'] ?? '',
      lastName: data['lastName'] ?? '',
      email: data['email'] ?? '',
    );
  }
}
