import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/generated/l10n.dart';

part 'account_event.dart';
part 'account_state.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  AccountBloc() : super(AccountInitial()) {
    on<LoadAccountInfoEvent>(_onLoadAccountInfo);
    on<SignOutEvent>(_onSignOut);
  }

  Future<void> _onLoadAccountInfo(
    LoadAccountInfoEvent event,
    Emitter<AccountState> emit,
  ) async {
    emit(AccountLoading());
    try {
      User? user = _auth.currentUser;
      if (user != null) {
        final snapshot = await FirebaseFirestore.instance
            .collection('users')
            .doc(user.uid)
            .get();

        final data = snapshot.data();
        if (data != null) {
          emit(AccountLoaded(
            email: user.email ?? '',
            firstName: data['firstName'] ?? '',
            lastName: data['lastName'] ?? '',
          ));
        } else {
          emit(AccountError(S.current.userInformationNotAvailable));
        }
      } else {
        emit(AccountError(S.current.userInformationNotAvailable));
      }
    } catch (e) {
      emit(AccountError('${S.current.error}:$e'));
    }
  }

  Future<void> _onSignOut(
    SignOutEvent event,
    Emitter<AccountState> emit,
  ) async {
    try {
      await _auth.signOut();
      emit(AccountSignedOut());
    } catch (e) {
      emit(AccountError('${S.current.error}:$e'));
    }
  }
}
