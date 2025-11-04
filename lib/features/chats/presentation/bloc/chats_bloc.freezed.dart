// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chats_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ChatsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadChats,
    required TResult Function(String chatRoomId, String myUid) getUserInfo,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadChats,
    TResult? Function(String chatRoomId, String myUid)? getUserInfo,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadChats,
    TResult Function(String chatRoomId, String myUid)? getUserInfo,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadChats value) loadChats,
    required TResult Function(GetUserInfo value) getUserInfo,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadChats value)? loadChats,
    TResult? Function(GetUserInfo value)? getUserInfo,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadChats value)? loadChats,
    TResult Function(GetUserInfo value)? getUserInfo,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatsEventCopyWith<$Res> {
  factory $ChatsEventCopyWith(
    ChatsEvent value,
    $Res Function(ChatsEvent) then,
  ) = _$ChatsEventCopyWithImpl<$Res, ChatsEvent>;
}

/// @nodoc
class _$ChatsEventCopyWithImpl<$Res, $Val extends ChatsEvent>
    implements $ChatsEventCopyWith<$Res> {
  _$ChatsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadChatsImplCopyWith<$Res> {
  factory _$$LoadChatsImplCopyWith(
    _$LoadChatsImpl value,
    $Res Function(_$LoadChatsImpl) then,
  ) = __$$LoadChatsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadChatsImplCopyWithImpl<$Res>
    extends _$ChatsEventCopyWithImpl<$Res, _$LoadChatsImpl>
    implements _$$LoadChatsImplCopyWith<$Res> {
  __$$LoadChatsImplCopyWithImpl(
    _$LoadChatsImpl _value,
    $Res Function(_$LoadChatsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadChatsImpl implements LoadChats {
  const _$LoadChatsImpl();

  @override
  String toString() {
    return 'ChatsEvent.loadChats()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadChatsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadChats,
    required TResult Function(String chatRoomId, String myUid) getUserInfo,
  }) {
    return loadChats();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadChats,
    TResult? Function(String chatRoomId, String myUid)? getUserInfo,
  }) {
    return loadChats?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadChats,
    TResult Function(String chatRoomId, String myUid)? getUserInfo,
    required TResult orElse(),
  }) {
    if (loadChats != null) {
      return loadChats();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadChats value) loadChats,
    required TResult Function(GetUserInfo value) getUserInfo,
  }) {
    return loadChats(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadChats value)? loadChats,
    TResult? Function(GetUserInfo value)? getUserInfo,
  }) {
    return loadChats?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadChats value)? loadChats,
    TResult Function(GetUserInfo value)? getUserInfo,
    required TResult orElse(),
  }) {
    if (loadChats != null) {
      return loadChats(this);
    }
    return orElse();
  }
}

abstract class LoadChats implements ChatsEvent {
  const factory LoadChats() = _$LoadChatsImpl;
}

/// @nodoc
abstract class _$$GetUserInfoImplCopyWith<$Res> {
  factory _$$GetUserInfoImplCopyWith(
    _$GetUserInfoImpl value,
    $Res Function(_$GetUserInfoImpl) then,
  ) = __$$GetUserInfoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String chatRoomId, String myUid});
}

/// @nodoc
class __$$GetUserInfoImplCopyWithImpl<$Res>
    extends _$ChatsEventCopyWithImpl<$Res, _$GetUserInfoImpl>
    implements _$$GetUserInfoImplCopyWith<$Res> {
  __$$GetUserInfoImplCopyWithImpl(
    _$GetUserInfoImpl _value,
    $Res Function(_$GetUserInfoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? chatRoomId = null, Object? myUid = null}) {
    return _then(
      _$GetUserInfoImpl(
        chatRoomId: null == chatRoomId
            ? _value.chatRoomId
            : chatRoomId // ignore: cast_nullable_to_non_nullable
                  as String,
        myUid: null == myUid
            ? _value.myUid
            : myUid // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$GetUserInfoImpl implements GetUserInfo {
  const _$GetUserInfoImpl({required this.chatRoomId, required this.myUid});

  @override
  final String chatRoomId;
  @override
  final String myUid;

  @override
  String toString() {
    return 'ChatsEvent.getUserInfo(chatRoomId: $chatRoomId, myUid: $myUid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserInfoImpl &&
            (identical(other.chatRoomId, chatRoomId) ||
                other.chatRoomId == chatRoomId) &&
            (identical(other.myUid, myUid) || other.myUid == myUid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatRoomId, myUid);

  /// Create a copy of ChatsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserInfoImplCopyWith<_$GetUserInfoImpl> get copyWith =>
      __$$GetUserInfoImplCopyWithImpl<_$GetUserInfoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadChats,
    required TResult Function(String chatRoomId, String myUid) getUserInfo,
  }) {
    return getUserInfo(chatRoomId, myUid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadChats,
    TResult? Function(String chatRoomId, String myUid)? getUserInfo,
  }) {
    return getUserInfo?.call(chatRoomId, myUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadChats,
    TResult Function(String chatRoomId, String myUid)? getUserInfo,
    required TResult orElse(),
  }) {
    if (getUserInfo != null) {
      return getUserInfo(chatRoomId, myUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadChats value) loadChats,
    required TResult Function(GetUserInfo value) getUserInfo,
  }) {
    return getUserInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadChats value)? loadChats,
    TResult? Function(GetUserInfo value)? getUserInfo,
  }) {
    return getUserInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadChats value)? loadChats,
    TResult Function(GetUserInfo value)? getUserInfo,
    required TResult orElse(),
  }) {
    if (getUserInfo != null) {
      return getUserInfo(this);
    }
    return orElse();
  }
}

abstract class GetUserInfo implements ChatsEvent {
  const factory GetUserInfo({
    required final String chatRoomId,
    required final String myUid,
  }) = _$GetUserInfoImpl;

  String get chatRoomId;
  String get myUid;

  /// Create a copy of ChatsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetUserInfoImplCopyWith<_$GetUserInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatsState {
  Stream<dynamic>? get chatRoomsStream => throw _privateConstructorUsedError;
  String? get uid => throw _privateConstructorUsedError;
  Map<String, UserData> get users => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of ChatsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatsStateCopyWith<ChatsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatsStateCopyWith<$Res> {
  factory $ChatsStateCopyWith(
    ChatsState value,
    $Res Function(ChatsState) then,
  ) = _$ChatsStateCopyWithImpl<$Res, ChatsState>;
  @useResult
  $Res call({
    Stream<dynamic>? chatRoomsStream,
    String? uid,
    Map<String, UserData> users,
    bool isLoading,
    String? error,
  });
}

/// @nodoc
class _$ChatsStateCopyWithImpl<$Res, $Val extends ChatsState>
    implements $ChatsStateCopyWith<$Res> {
  _$ChatsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatRoomsStream = freezed,
    Object? uid = freezed,
    Object? users = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(
      _value.copyWith(
            chatRoomsStream: freezed == chatRoomsStream
                ? _value.chatRoomsStream
                : chatRoomsStream // ignore: cast_nullable_to_non_nullable
                      as Stream<dynamic>?,
            uid: freezed == uid
                ? _value.uid
                : uid // ignore: cast_nullable_to_non_nullable
                      as String?,
            users: null == users
                ? _value.users
                : users // ignore: cast_nullable_to_non_nullable
                      as Map<String, UserData>,
            isLoading: null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                      as bool,
            error: freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChatsStateImplCopyWith<$Res>
    implements $ChatsStateCopyWith<$Res> {
  factory _$$ChatsStateImplCopyWith(
    _$ChatsStateImpl value,
    $Res Function(_$ChatsStateImpl) then,
  ) = __$$ChatsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Stream<dynamic>? chatRoomsStream,
    String? uid,
    Map<String, UserData> users,
    bool isLoading,
    String? error,
  });
}

/// @nodoc
class __$$ChatsStateImplCopyWithImpl<$Res>
    extends _$ChatsStateCopyWithImpl<$Res, _$ChatsStateImpl>
    implements _$$ChatsStateImplCopyWith<$Res> {
  __$$ChatsStateImplCopyWithImpl(
    _$ChatsStateImpl _value,
    $Res Function(_$ChatsStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatRoomsStream = freezed,
    Object? uid = freezed,
    Object? users = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(
      _$ChatsStateImpl(
        chatRoomsStream: freezed == chatRoomsStream
            ? _value.chatRoomsStream
            : chatRoomsStream // ignore: cast_nullable_to_non_nullable
                  as Stream<dynamic>?,
        uid: freezed == uid
            ? _value.uid
            : uid // ignore: cast_nullable_to_non_nullable
                  as String?,
        users: null == users
            ? _value._users
            : users // ignore: cast_nullable_to_non_nullable
                  as Map<String, UserData>,
        isLoading: null == isLoading
            ? _value.isLoading
            : isLoading // ignore: cast_nullable_to_non_nullable
                  as bool,
        error: freezed == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$ChatsStateImpl implements _ChatsState {
  const _$ChatsStateImpl({
    this.chatRoomsStream,
    this.uid,
    final Map<String, UserData> users = const {},
    this.isLoading = false,
    this.error,
  }) : _users = users;

  @override
  final Stream<dynamic>? chatRoomsStream;
  @override
  final String? uid;
  final Map<String, UserData> _users;
  @override
  @JsonKey()
  Map<String, UserData> get users {
    if (_users is EqualUnmodifiableMapView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_users);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;

  @override
  String toString() {
    return 'ChatsState(chatRoomsStream: $chatRoomsStream, uid: $uid, users: $users, isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatsStateImpl &&
            (identical(other.chatRoomsStream, chatRoomsStream) ||
                other.chatRoomsStream == chatRoomsStream) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    chatRoomsStream,
    uid,
    const DeepCollectionEquality().hash(_users),
    isLoading,
    error,
  );

  /// Create a copy of ChatsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatsStateImplCopyWith<_$ChatsStateImpl> get copyWith =>
      __$$ChatsStateImplCopyWithImpl<_$ChatsStateImpl>(this, _$identity);
}

abstract class _ChatsState implements ChatsState {
  const factory _ChatsState({
    final Stream<dynamic>? chatRoomsStream,
    final String? uid,
    final Map<String, UserData> users,
    final bool isLoading,
    final String? error,
  }) = _$ChatsStateImpl;

  @override
  Stream<dynamic>? get chatRoomsStream;
  @override
  String? get uid;
  @override
  Map<String, UserData> get users;
  @override
  bool get isLoading;
  @override
  String? get error;

  /// Create a copy of ChatsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatsStateImplCopyWith<_$ChatsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserData {
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get firstLetters => throw _privateConstructorUsedError;

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserDataCopyWith<UserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataCopyWith<$Res> {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) then) =
      _$UserDataCopyWithImpl<$Res, UserData>;
  @useResult
  $Res call({String firstName, String lastName, String firstLetters});
}

/// @nodoc
class _$UserDataCopyWithImpl<$Res, $Val extends UserData>
    implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? firstLetters = null,
  }) {
    return _then(
      _value.copyWith(
            firstName: null == firstName
                ? _value.firstName
                : firstName // ignore: cast_nullable_to_non_nullable
                      as String,
            lastName: null == lastName
                ? _value.lastName
                : lastName // ignore: cast_nullable_to_non_nullable
                      as String,
            firstLetters: null == firstLetters
                ? _value.firstLetters
                : firstLetters // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserDataImplCopyWith<$Res>
    implements $UserDataCopyWith<$Res> {
  factory _$$UserDataImplCopyWith(
    _$UserDataImpl value,
    $Res Function(_$UserDataImpl) then,
  ) = __$$UserDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String firstName, String lastName, String firstLetters});
}

/// @nodoc
class __$$UserDataImplCopyWithImpl<$Res>
    extends _$UserDataCopyWithImpl<$Res, _$UserDataImpl>
    implements _$$UserDataImplCopyWith<$Res> {
  __$$UserDataImplCopyWithImpl(
    _$UserDataImpl _value,
    $Res Function(_$UserDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? firstLetters = null,
  }) {
    return _then(
      _$UserDataImpl(
        firstName: null == firstName
            ? _value.firstName
            : firstName // ignore: cast_nullable_to_non_nullable
                  as String,
        lastName: null == lastName
            ? _value.lastName
            : lastName // ignore: cast_nullable_to_non_nullable
                  as String,
        firstLetters: null == firstLetters
            ? _value.firstLetters
            : firstLetters // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$UserDataImpl extends _UserData {
  const _$UserDataImpl({
    required this.firstName,
    required this.lastName,
    required this.firstLetters,
  }) : super._();

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String firstLetters;

  @override
  String toString() {
    return 'UserData(firstName: $firstName, lastName: $lastName, firstLetters: $firstLetters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDataImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.firstLetters, firstLetters) ||
                other.firstLetters == firstLetters));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, firstName, lastName, firstLetters);

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDataImplCopyWith<_$UserDataImpl> get copyWith =>
      __$$UserDataImplCopyWithImpl<_$UserDataImpl>(this, _$identity);
}

abstract class _UserData extends UserData {
  const factory _UserData({
    required final String firstName,
    required final String lastName,
    required final String firstLetters,
  }) = _$UserDataImpl;
  const _UserData._() : super._();

  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get firstLetters;

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserDataImplCopyWith<_$UserDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
