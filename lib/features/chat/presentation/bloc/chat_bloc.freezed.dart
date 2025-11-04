// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChatEvent {

 String get chatRoomId;
/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatEventCopyWith<ChatEvent> get copyWith => _$ChatEventCopyWithImpl<ChatEvent>(this as ChatEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatEvent&&(identical(other.chatRoomId, chatRoomId) || other.chatRoomId == chatRoomId));
}


@override
int get hashCode => Object.hash(runtimeType,chatRoomId);

@override
String toString() {
  return 'ChatEvent(chatRoomId: $chatRoomId)';
}


}

/// @nodoc
abstract mixin class $ChatEventCopyWith<$Res>  {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) _then) = _$ChatEventCopyWithImpl;
@useResult
$Res call({
 String chatRoomId
});




}
/// @nodoc
class _$ChatEventCopyWithImpl<$Res>
    implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._self, this._then);

  final ChatEvent _self;
  final $Res Function(ChatEvent) _then;

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? chatRoomId = null,}) {
  return _then(_self.copyWith(
chatRoomId: null == chatRoomId ? _self.chatRoomId : chatRoomId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatEvent].
extension ChatEventPatterns on ChatEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ChatSubscriptionRequested value)?  subscriptionRequested,TResult Function( ChatMessageSended value)?  messageSended,TResult Function( ChatMessageDeleted value)?  messageDeleted,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ChatSubscriptionRequested() when subscriptionRequested != null:
return subscriptionRequested(_that);case ChatMessageSended() when messageSended != null:
return messageSended(_that);case ChatMessageDeleted() when messageDeleted != null:
return messageDeleted(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ChatSubscriptionRequested value)  subscriptionRequested,required TResult Function( ChatMessageSended value)  messageSended,required TResult Function( ChatMessageDeleted value)  messageDeleted,}){
final _that = this;
switch (_that) {
case ChatSubscriptionRequested():
return subscriptionRequested(_that);case ChatMessageSended():
return messageSended(_that);case ChatMessageDeleted():
return messageDeleted(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ChatSubscriptionRequested value)?  subscriptionRequested,TResult? Function( ChatMessageSended value)?  messageSended,TResult? Function( ChatMessageDeleted value)?  messageDeleted,}){
final _that = this;
switch (_that) {
case ChatSubscriptionRequested() when subscriptionRequested != null:
return subscriptionRequested(_that);case ChatMessageSended() when messageSended != null:
return messageSended(_that);case ChatMessageDeleted() when messageDeleted != null:
return messageDeleted(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String chatRoomId)?  subscriptionRequested,TResult Function( MessageEntity message,  String chatRoomId)?  messageSended,TResult Function( MessageEntity message,  String chatRoomId)?  messageDeleted,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ChatSubscriptionRequested() when subscriptionRequested != null:
return subscriptionRequested(_that.chatRoomId);case ChatMessageSended() when messageSended != null:
return messageSended(_that.message,_that.chatRoomId);case ChatMessageDeleted() when messageDeleted != null:
return messageDeleted(_that.message,_that.chatRoomId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String chatRoomId)  subscriptionRequested,required TResult Function( MessageEntity message,  String chatRoomId)  messageSended,required TResult Function( MessageEntity message,  String chatRoomId)  messageDeleted,}) {final _that = this;
switch (_that) {
case ChatSubscriptionRequested():
return subscriptionRequested(_that.chatRoomId);case ChatMessageSended():
return messageSended(_that.message,_that.chatRoomId);case ChatMessageDeleted():
return messageDeleted(_that.message,_that.chatRoomId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String chatRoomId)?  subscriptionRequested,TResult? Function( MessageEntity message,  String chatRoomId)?  messageSended,TResult? Function( MessageEntity message,  String chatRoomId)?  messageDeleted,}) {final _that = this;
switch (_that) {
case ChatSubscriptionRequested() when subscriptionRequested != null:
return subscriptionRequested(_that.chatRoomId);case ChatMessageSended() when messageSended != null:
return messageSended(_that.message,_that.chatRoomId);case ChatMessageDeleted() when messageDeleted != null:
return messageDeleted(_that.message,_that.chatRoomId);case _:
  return null;

}
}

}

/// @nodoc


class ChatSubscriptionRequested implements ChatEvent {
  const ChatSubscriptionRequested({required this.chatRoomId});
  

@override final  String chatRoomId;

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatSubscriptionRequestedCopyWith<ChatSubscriptionRequested> get copyWith => _$ChatSubscriptionRequestedCopyWithImpl<ChatSubscriptionRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatSubscriptionRequested&&(identical(other.chatRoomId, chatRoomId) || other.chatRoomId == chatRoomId));
}


@override
int get hashCode => Object.hash(runtimeType,chatRoomId);

@override
String toString() {
  return 'ChatEvent.subscriptionRequested(chatRoomId: $chatRoomId)';
}


}

/// @nodoc
abstract mixin class $ChatSubscriptionRequestedCopyWith<$Res> implements $ChatEventCopyWith<$Res> {
  factory $ChatSubscriptionRequestedCopyWith(ChatSubscriptionRequested value, $Res Function(ChatSubscriptionRequested) _then) = _$ChatSubscriptionRequestedCopyWithImpl;
@override @useResult
$Res call({
 String chatRoomId
});




}
/// @nodoc
class _$ChatSubscriptionRequestedCopyWithImpl<$Res>
    implements $ChatSubscriptionRequestedCopyWith<$Res> {
  _$ChatSubscriptionRequestedCopyWithImpl(this._self, this._then);

  final ChatSubscriptionRequested _self;
  final $Res Function(ChatSubscriptionRequested) _then;

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? chatRoomId = null,}) {
  return _then(ChatSubscriptionRequested(
chatRoomId: null == chatRoomId ? _self.chatRoomId : chatRoomId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ChatMessageSended implements ChatEvent {
  const ChatMessageSended({required this.message, required this.chatRoomId});
  

 final  MessageEntity message;
@override final  String chatRoomId;

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatMessageSendedCopyWith<ChatMessageSended> get copyWith => _$ChatMessageSendedCopyWithImpl<ChatMessageSended>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatMessageSended&&(identical(other.message, message) || other.message == message)&&(identical(other.chatRoomId, chatRoomId) || other.chatRoomId == chatRoomId));
}


@override
int get hashCode => Object.hash(runtimeType,message,chatRoomId);

@override
String toString() {
  return 'ChatEvent.messageSended(message: $message, chatRoomId: $chatRoomId)';
}


}

/// @nodoc
abstract mixin class $ChatMessageSendedCopyWith<$Res> implements $ChatEventCopyWith<$Res> {
  factory $ChatMessageSendedCopyWith(ChatMessageSended value, $Res Function(ChatMessageSended) _then) = _$ChatMessageSendedCopyWithImpl;
@override @useResult
$Res call({
 MessageEntity message, String chatRoomId
});




}
/// @nodoc
class _$ChatMessageSendedCopyWithImpl<$Res>
    implements $ChatMessageSendedCopyWith<$Res> {
  _$ChatMessageSendedCopyWithImpl(this._self, this._then);

  final ChatMessageSended _self;
  final $Res Function(ChatMessageSended) _then;

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? chatRoomId = null,}) {
  return _then(ChatMessageSended(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as MessageEntity,chatRoomId: null == chatRoomId ? _self.chatRoomId : chatRoomId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ChatMessageDeleted implements ChatEvent {
  const ChatMessageDeleted({required this.message, required this.chatRoomId});
  

 final  MessageEntity message;
@override final  String chatRoomId;

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatMessageDeletedCopyWith<ChatMessageDeleted> get copyWith => _$ChatMessageDeletedCopyWithImpl<ChatMessageDeleted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatMessageDeleted&&(identical(other.message, message) || other.message == message)&&(identical(other.chatRoomId, chatRoomId) || other.chatRoomId == chatRoomId));
}


@override
int get hashCode => Object.hash(runtimeType,message,chatRoomId);

@override
String toString() {
  return 'ChatEvent.messageDeleted(message: $message, chatRoomId: $chatRoomId)';
}


}

/// @nodoc
abstract mixin class $ChatMessageDeletedCopyWith<$Res> implements $ChatEventCopyWith<$Res> {
  factory $ChatMessageDeletedCopyWith(ChatMessageDeleted value, $Res Function(ChatMessageDeleted) _then) = _$ChatMessageDeletedCopyWithImpl;
@override @useResult
$Res call({
 MessageEntity message, String chatRoomId
});




}
/// @nodoc
class _$ChatMessageDeletedCopyWithImpl<$Res>
    implements $ChatMessageDeletedCopyWith<$Res> {
  _$ChatMessageDeletedCopyWithImpl(this._self, this._then);

  final ChatMessageDeleted _self;
  final $Res Function(ChatMessageDeleted) _then;

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? chatRoomId = null,}) {
  return _then(ChatMessageDeleted(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as MessageEntity,chatRoomId: null == chatRoomId ? _self.chatRoomId : chatRoomId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$ChatState {

 ChatStatus get status; List<MessageEntity> get messages;
/// Create a copy of ChatState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatStateCopyWith<ChatState> get copyWith => _$ChatStateCopyWithImpl<ChatState>(this as ChatState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.messages, messages));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(messages));

@override
String toString() {
  return 'ChatState(status: $status, messages: $messages)';
}


}

/// @nodoc
abstract mixin class $ChatStateCopyWith<$Res>  {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) _then) = _$ChatStateCopyWithImpl;
@useResult
$Res call({
 ChatStatus status, List<MessageEntity> messages
});




}
/// @nodoc
class _$ChatStateCopyWithImpl<$Res>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._self, this._then);

  final ChatState _self;
  final $Res Function(ChatState) _then;

/// Create a copy of ChatState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? messages = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ChatStatus,messages: null == messages ? _self.messages : messages // ignore: cast_nullable_to_non_nullable
as List<MessageEntity>,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatState].
extension ChatStatePatterns on ChatState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatState value)  $default,){
final _that = this;
switch (_that) {
case _ChatState():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatState value)?  $default,){
final _that = this;
switch (_that) {
case _ChatState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ChatStatus status,  List<MessageEntity> messages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatState() when $default != null:
return $default(_that.status,_that.messages);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ChatStatus status,  List<MessageEntity> messages)  $default,) {final _that = this;
switch (_that) {
case _ChatState():
return $default(_that.status,_that.messages);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ChatStatus status,  List<MessageEntity> messages)?  $default,) {final _that = this;
switch (_that) {
case _ChatState() when $default != null:
return $default(_that.status,_that.messages);case _:
  return null;

}
}

}

/// @nodoc


class _ChatState implements ChatState {
  const _ChatState({this.status = ChatStatus.initial, final  List<MessageEntity> messages = const []}): _messages = messages;
  

@override@JsonKey() final  ChatStatus status;
 final  List<MessageEntity> _messages;
@override@JsonKey() List<MessageEntity> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}


/// Create a copy of ChatState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatStateCopyWith<_ChatState> get copyWith => __$ChatStateCopyWithImpl<_ChatState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._messages, _messages));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_messages));

@override
String toString() {
  return 'ChatState(status: $status, messages: $messages)';
}


}

/// @nodoc
abstract mixin class _$ChatStateCopyWith<$Res> implements $ChatStateCopyWith<$Res> {
  factory _$ChatStateCopyWith(_ChatState value, $Res Function(_ChatState) _then) = __$ChatStateCopyWithImpl;
@override @useResult
$Res call({
 ChatStatus status, List<MessageEntity> messages
});




}
/// @nodoc
class __$ChatStateCopyWithImpl<$Res>
    implements _$ChatStateCopyWith<$Res> {
  __$ChatStateCopyWithImpl(this._self, this._then);

  final _ChatState _self;
  final $Res Function(_ChatState) _then;

/// Create a copy of ChatState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? messages = null,}) {
  return _then(_ChatState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ChatStatus,messages: null == messages ? _self._messages : messages // ignore: cast_nullable_to_non_nullable
as List<MessageEntity>,
  ));
}


}

// dart format on
