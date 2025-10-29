import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:realtime_chat_app/features/profile/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  const UserModel({
    required super.email,
    required super.firstName,
    required super.lastName,
  });

  factory UserModel.fromSnapshot(DocumentSnapshot snap) {
    final snapshot = snap.data() as Map<String, dynamic>?;
    if (snapshot == null) {
      throw StateError('User data is null');
    }
    return UserModel(
      email: snapshot['email'] as String,
      firstName: snapshot['firstName'] as String,
      lastName: snapshot['lastName'] as String,
    );
  }

  Map<String, dynamic> toDocument() => {
    'email': email,
    'firstName': firstName,
    'lastName': lastName,
  };
}
