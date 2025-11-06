// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UsersSearchEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UsersSearchEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UsersSearchEvent()';
}


}

/// @nodoc
class $UsersSearchEventCopyWith<$Res>  {
$UsersSearchEventCopyWith(UsersSearchEvent _, $Res Function(UsersSearchEvent) __);
}


/// Adds pattern-matching-related methods to [UsersSearchEvent].
extension UsersSearchEventPatterns on UsersSearchEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SearchUsers value)?  searchUsers,TResult Function( CreateChatRoom value)?  createChatRoom,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SearchUsers() when searchUsers != null:
return searchUsers(_that);case CreateChatRoom() when createChatRoom != null:
return createChatRoom(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SearchUsers value)  searchUsers,required TResult Function( CreateChatRoom value)  createChatRoom,}){
final _that = this;
switch (_that) {
case SearchUsers():
return searchUsers(_that);case CreateChatRoom():
return createChatRoom(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SearchUsers value)?  searchUsers,TResult? Function( CreateChatRoom value)?  createChatRoom,}){
final _that = this;
switch (_that) {
case SearchUsers() when searchUsers != null:
return searchUsers(_that);case CreateChatRoom() when createChatRoom != null:
return createChatRoom(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String query)?  searchUsers,TResult Function( UserEntity user)?  createChatRoom,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SearchUsers() when searchUsers != null:
return searchUsers(_that.query);case CreateChatRoom() when createChatRoom != null:
return createChatRoom(_that.user);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String query)  searchUsers,required TResult Function( UserEntity user)  createChatRoom,}) {final _that = this;
switch (_that) {
case SearchUsers():
return searchUsers(_that.query);case CreateChatRoom():
return createChatRoom(_that.user);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String query)?  searchUsers,TResult? Function( UserEntity user)?  createChatRoom,}) {final _that = this;
switch (_that) {
case SearchUsers() when searchUsers != null:
return searchUsers(_that.query);case CreateChatRoom() when createChatRoom != null:
return createChatRoom(_that.user);case _:
  return null;

}
}

}

/// @nodoc


class SearchUsers implements UsersSearchEvent {
  const SearchUsers(this.query);
  

 final  String query;

/// Create a copy of UsersSearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchUsersCopyWith<SearchUsers> get copyWith => _$SearchUsersCopyWithImpl<SearchUsers>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchUsers&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'UsersSearchEvent.searchUsers(query: $query)';
}


}

/// @nodoc
abstract mixin class $SearchUsersCopyWith<$Res> implements $UsersSearchEventCopyWith<$Res> {
  factory $SearchUsersCopyWith(SearchUsers value, $Res Function(SearchUsers) _then) = _$SearchUsersCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class _$SearchUsersCopyWithImpl<$Res>
    implements $SearchUsersCopyWith<$Res> {
  _$SearchUsersCopyWithImpl(this._self, this._then);

  final SearchUsers _self;
  final $Res Function(SearchUsers) _then;

/// Create a copy of UsersSearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(SearchUsers(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CreateChatRoom implements UsersSearchEvent {
  const CreateChatRoom(this.user);
  

 final  UserEntity user;

/// Create a copy of UsersSearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateChatRoomCopyWith<CreateChatRoom> get copyWith => _$CreateChatRoomCopyWithImpl<CreateChatRoom>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateChatRoom&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'UsersSearchEvent.createChatRoom(user: $user)';
}


}

/// @nodoc
abstract mixin class $CreateChatRoomCopyWith<$Res> implements $UsersSearchEventCopyWith<$Res> {
  factory $CreateChatRoomCopyWith(CreateChatRoom value, $Res Function(CreateChatRoom) _then) = _$CreateChatRoomCopyWithImpl;
@useResult
$Res call({
 UserEntity user
});




}
/// @nodoc
class _$CreateChatRoomCopyWithImpl<$Res>
    implements $CreateChatRoomCopyWith<$Res> {
  _$CreateChatRoomCopyWithImpl(this._self, this._then);

  final CreateChatRoom _self;
  final $Res Function(CreateChatRoom) _then;

/// Create a copy of UsersSearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(CreateChatRoom(
null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntity,
  ));
}


}

/// @nodoc
mixin _$UsersSearchState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UsersSearchState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UsersSearchState()';
}


}

/// @nodoc
class $UsersSearchStateCopyWith<$Res>  {
$UsersSearchStateCopyWith(UsersSearchState _, $Res Function(UsersSearchState) __);
}


/// Adds pattern-matching-related methods to [UsersSearchState].
extension UsersSearchStatePatterns on UsersSearchState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Initial value)?  initial,TResult Function( Loading value)?  loading,TResult Function( Success value)?  success,TResult Function( Error value)?  error,TResult Function( ChatRoomCreated value)?  chatRoomCreated,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case Success() when success != null:
return success(_that);case Error() when error != null:
return error(_that);case ChatRoomCreated() when chatRoomCreated != null:
return chatRoomCreated(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Initial value)  initial,required TResult Function( Loading value)  loading,required TResult Function( Success value)  success,required TResult Function( Error value)  error,required TResult Function( ChatRoomCreated value)  chatRoomCreated,}){
final _that = this;
switch (_that) {
case Initial():
return initial(_that);case Loading():
return loading(_that);case Success():
return success(_that);case Error():
return error(_that);case ChatRoomCreated():
return chatRoomCreated(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Initial value)?  initial,TResult? Function( Loading value)?  loading,TResult? Function( Success value)?  success,TResult? Function( Error value)?  error,TResult? Function( ChatRoomCreated value)?  chatRoomCreated,}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case Success() when success != null:
return success(_that);case Error() when error != null:
return error(_that);case ChatRoomCreated() when chatRoomCreated != null:
return chatRoomCreated(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<UserEntity> users)?  success,TResult Function( String message)?  error,TResult Function( String chatRoomId,  UserEntity user)?  chatRoomCreated,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case Loading() when loading != null:
return loading();case Success() when success != null:
return success(_that.users);case Error() when error != null:
return error(_that.message);case ChatRoomCreated() when chatRoomCreated != null:
return chatRoomCreated(_that.chatRoomId,_that.user);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<UserEntity> users)  success,required TResult Function( String message)  error,required TResult Function( String chatRoomId,  UserEntity user)  chatRoomCreated,}) {final _that = this;
switch (_that) {
case Initial():
return initial();case Loading():
return loading();case Success():
return success(_that.users);case Error():
return error(_that.message);case ChatRoomCreated():
return chatRoomCreated(_that.chatRoomId,_that.user);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<UserEntity> users)?  success,TResult? Function( String message)?  error,TResult? Function( String chatRoomId,  UserEntity user)?  chatRoomCreated,}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case Loading() when loading != null:
return loading();case Success() when success != null:
return success(_that.users);case Error() when error != null:
return error(_that.message);case ChatRoomCreated() when chatRoomCreated != null:
return chatRoomCreated(_that.chatRoomId,_that.user);case _:
  return null;

}
}

}

/// @nodoc


class Initial implements UsersSearchState {
  const Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UsersSearchState.initial()';
}


}




/// @nodoc


class Loading implements UsersSearchState {
  const Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UsersSearchState.loading()';
}


}




/// @nodoc


class Success implements UsersSearchState {
  const Success(final  List<UserEntity> users): _users = users;
  

 final  List<UserEntity> _users;
 List<UserEntity> get users {
  if (_users is EqualUnmodifiableListView) return _users;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_users);
}


/// Create a copy of UsersSearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuccessCopyWith<Success> get copyWith => _$SuccessCopyWithImpl<Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Success&&const DeepCollectionEquality().equals(other._users, _users));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_users));

@override
String toString() {
  return 'UsersSearchState.success(users: $users)';
}


}

/// @nodoc
abstract mixin class $SuccessCopyWith<$Res> implements $UsersSearchStateCopyWith<$Res> {
  factory $SuccessCopyWith(Success value, $Res Function(Success) _then) = _$SuccessCopyWithImpl;
@useResult
$Res call({
 List<UserEntity> users
});




}
/// @nodoc
class _$SuccessCopyWithImpl<$Res>
    implements $SuccessCopyWith<$Res> {
  _$SuccessCopyWithImpl(this._self, this._then);

  final Success _self;
  final $Res Function(Success) _then;

/// Create a copy of UsersSearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? users = null,}) {
  return _then(Success(
null == users ? _self._users : users // ignore: cast_nullable_to_non_nullable
as List<UserEntity>,
  ));
}


}

/// @nodoc


class Error implements UsersSearchState {
  const Error(this.message);
  

 final  String message;

/// Create a copy of UsersSearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorCopyWith<Error> get copyWith => _$ErrorCopyWithImpl<Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'UsersSearchState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $ErrorCopyWith<$Res> implements $UsersSearchStateCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) _then) = _$ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ErrorCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(this._self, this._then);

  final Error _self;
  final $Res Function(Error) _then;

/// Create a copy of UsersSearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ChatRoomCreated implements UsersSearchState {
  const ChatRoomCreated({required this.chatRoomId, required this.user});
  

 final  String chatRoomId;
 final  UserEntity user;

/// Create a copy of UsersSearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatRoomCreatedCopyWith<ChatRoomCreated> get copyWith => _$ChatRoomCreatedCopyWithImpl<ChatRoomCreated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatRoomCreated&&(identical(other.chatRoomId, chatRoomId) || other.chatRoomId == chatRoomId)&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,chatRoomId,user);

@override
String toString() {
  return 'UsersSearchState.chatRoomCreated(chatRoomId: $chatRoomId, user: $user)';
}


}

/// @nodoc
abstract mixin class $ChatRoomCreatedCopyWith<$Res> implements $UsersSearchStateCopyWith<$Res> {
  factory $ChatRoomCreatedCopyWith(ChatRoomCreated value, $Res Function(ChatRoomCreated) _then) = _$ChatRoomCreatedCopyWithImpl;
@useResult
$Res call({
 String chatRoomId, UserEntity user
});




}
/// @nodoc
class _$ChatRoomCreatedCopyWithImpl<$Res>
    implements $ChatRoomCreatedCopyWith<$Res> {
  _$ChatRoomCreatedCopyWithImpl(this._self, this._then);

  final ChatRoomCreated _self;
  final $Res Function(ChatRoomCreated) _then;

/// Create a copy of UsersSearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? chatRoomId = null,Object? user = null,}) {
  return _then(ChatRoomCreated(
chatRoomId: null == chatRoomId ? _self.chatRoomId : chatRoomId // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntity,
  ));
}


}

// dart format on
