// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ChatEvent {
  String get chatRoomId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String chatRoomId) subscriptionRequested,
    required TResult Function(MessageEntity message, String chatRoomId)
    messageSended,
    required TResult Function(MessageEntity message, String chatRoomId)
    messageDeleted,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String chatRoomId)? subscriptionRequested,
    TResult? Function(MessageEntity message, String chatRoomId)? messageSended,
    TResult? Function(MessageEntity message, String chatRoomId)? messageDeleted,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chatRoomId)? subscriptionRequested,
    TResult Function(MessageEntity message, String chatRoomId)? messageSended,
    TResult Function(MessageEntity message, String chatRoomId)? messageDeleted,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatSubscriptionRequested value)
    subscriptionRequested,
    required TResult Function(ChatMessageSended value) messageSended,
    required TResult Function(ChatMessageDeleted value) messageDeleted,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatSubscriptionRequested value)? subscriptionRequested,
    TResult? Function(ChatMessageSended value)? messageSended,
    TResult? Function(ChatMessageDeleted value)? messageDeleted,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatSubscriptionRequested value)? subscriptionRequested,
    TResult Function(ChatMessageSended value)? messageSended,
    TResult Function(ChatMessageDeleted value)? messageDeleted,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatEventCopyWith<ChatEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res, ChatEvent>;
  @useResult
  $Res call({String chatRoomId});
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res, $Val extends ChatEvent>
    implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? chatRoomId = null}) {
    return _then(
      _value.copyWith(
            chatRoomId: null == chatRoomId
                ? _value.chatRoomId
                : chatRoomId // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChatSubscriptionRequestedImplCopyWith<$Res>
    implements $ChatEventCopyWith<$Res> {
  factory _$$ChatSubscriptionRequestedImplCopyWith(
    _$ChatSubscriptionRequestedImpl value,
    $Res Function(_$ChatSubscriptionRequestedImpl) then,
  ) = __$$ChatSubscriptionRequestedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String chatRoomId});
}

/// @nodoc
class __$$ChatSubscriptionRequestedImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$ChatSubscriptionRequestedImpl>
    implements _$$ChatSubscriptionRequestedImplCopyWith<$Res> {
  __$$ChatSubscriptionRequestedImplCopyWithImpl(
    _$ChatSubscriptionRequestedImpl _value,
    $Res Function(_$ChatSubscriptionRequestedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? chatRoomId = null}) {
    return _then(
      _$ChatSubscriptionRequestedImpl(
        chatRoomId: null == chatRoomId
            ? _value.chatRoomId
            : chatRoomId // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ChatSubscriptionRequestedImpl implements ChatSubscriptionRequested {
  const _$ChatSubscriptionRequestedImpl({required this.chatRoomId});

  @override
  final String chatRoomId;

  @override
  String toString() {
    return 'ChatEvent.subscriptionRequested(chatRoomId: $chatRoomId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatSubscriptionRequestedImpl &&
            (identical(other.chatRoomId, chatRoomId) ||
                other.chatRoomId == chatRoomId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatRoomId);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatSubscriptionRequestedImplCopyWith<_$ChatSubscriptionRequestedImpl>
  get copyWith =>
      __$$ChatSubscriptionRequestedImplCopyWithImpl<
        _$ChatSubscriptionRequestedImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String chatRoomId) subscriptionRequested,
    required TResult Function(MessageEntity message, String chatRoomId)
    messageSended,
    required TResult Function(MessageEntity message, String chatRoomId)
    messageDeleted,
  }) {
    return subscriptionRequested(chatRoomId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String chatRoomId)? subscriptionRequested,
    TResult? Function(MessageEntity message, String chatRoomId)? messageSended,
    TResult? Function(MessageEntity message, String chatRoomId)? messageDeleted,
  }) {
    return subscriptionRequested?.call(chatRoomId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chatRoomId)? subscriptionRequested,
    TResult Function(MessageEntity message, String chatRoomId)? messageSended,
    TResult Function(MessageEntity message, String chatRoomId)? messageDeleted,
    required TResult orElse(),
  }) {
    if (subscriptionRequested != null) {
      return subscriptionRequested(chatRoomId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatSubscriptionRequested value)
    subscriptionRequested,
    required TResult Function(ChatMessageSended value) messageSended,
    required TResult Function(ChatMessageDeleted value) messageDeleted,
  }) {
    return subscriptionRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatSubscriptionRequested value)? subscriptionRequested,
    TResult? Function(ChatMessageSended value)? messageSended,
    TResult? Function(ChatMessageDeleted value)? messageDeleted,
  }) {
    return subscriptionRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatSubscriptionRequested value)? subscriptionRequested,
    TResult Function(ChatMessageSended value)? messageSended,
    TResult Function(ChatMessageDeleted value)? messageDeleted,
    required TResult orElse(),
  }) {
    if (subscriptionRequested != null) {
      return subscriptionRequested(this);
    }
    return orElse();
  }
}

abstract class ChatSubscriptionRequested implements ChatEvent {
  const factory ChatSubscriptionRequested({required final String chatRoomId}) =
      _$ChatSubscriptionRequestedImpl;

  @override
  String get chatRoomId;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatSubscriptionRequestedImplCopyWith<_$ChatSubscriptionRequestedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatMessageSendedImplCopyWith<$Res>
    implements $ChatEventCopyWith<$Res> {
  factory _$$ChatMessageSendedImplCopyWith(
    _$ChatMessageSendedImpl value,
    $Res Function(_$ChatMessageSendedImpl) then,
  ) = __$$ChatMessageSendedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MessageEntity message, String chatRoomId});
}

/// @nodoc
class __$$ChatMessageSendedImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$ChatMessageSendedImpl>
    implements _$$ChatMessageSendedImplCopyWith<$Res> {
  __$$ChatMessageSendedImplCopyWithImpl(
    _$ChatMessageSendedImpl _value,
    $Res Function(_$ChatMessageSendedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? chatRoomId = null}) {
    return _then(
      _$ChatMessageSendedImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as MessageEntity,
        chatRoomId: null == chatRoomId
            ? _value.chatRoomId
            : chatRoomId // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ChatMessageSendedImpl implements ChatMessageSended {
  const _$ChatMessageSendedImpl({
    required this.message,
    required this.chatRoomId,
  });

  @override
  final MessageEntity message;
  @override
  final String chatRoomId;

  @override
  String toString() {
    return 'ChatEvent.messageSended(message: $message, chatRoomId: $chatRoomId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatMessageSendedImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.chatRoomId, chatRoomId) ||
                other.chatRoomId == chatRoomId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, chatRoomId);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatMessageSendedImplCopyWith<_$ChatMessageSendedImpl> get copyWith =>
      __$$ChatMessageSendedImplCopyWithImpl<_$ChatMessageSendedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String chatRoomId) subscriptionRequested,
    required TResult Function(MessageEntity message, String chatRoomId)
    messageSended,
    required TResult Function(MessageEntity message, String chatRoomId)
    messageDeleted,
  }) {
    return messageSended(message, chatRoomId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String chatRoomId)? subscriptionRequested,
    TResult? Function(MessageEntity message, String chatRoomId)? messageSended,
    TResult? Function(MessageEntity message, String chatRoomId)? messageDeleted,
  }) {
    return messageSended?.call(message, chatRoomId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chatRoomId)? subscriptionRequested,
    TResult Function(MessageEntity message, String chatRoomId)? messageSended,
    TResult Function(MessageEntity message, String chatRoomId)? messageDeleted,
    required TResult orElse(),
  }) {
    if (messageSended != null) {
      return messageSended(message, chatRoomId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatSubscriptionRequested value)
    subscriptionRequested,
    required TResult Function(ChatMessageSended value) messageSended,
    required TResult Function(ChatMessageDeleted value) messageDeleted,
  }) {
    return messageSended(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatSubscriptionRequested value)? subscriptionRequested,
    TResult? Function(ChatMessageSended value)? messageSended,
    TResult? Function(ChatMessageDeleted value)? messageDeleted,
  }) {
    return messageSended?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatSubscriptionRequested value)? subscriptionRequested,
    TResult Function(ChatMessageSended value)? messageSended,
    TResult Function(ChatMessageDeleted value)? messageDeleted,
    required TResult orElse(),
  }) {
    if (messageSended != null) {
      return messageSended(this);
    }
    return orElse();
  }
}

abstract class ChatMessageSended implements ChatEvent {
  const factory ChatMessageSended({
    required final MessageEntity message,
    required final String chatRoomId,
  }) = _$ChatMessageSendedImpl;

  MessageEntity get message;
  @override
  String get chatRoomId;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatMessageSendedImplCopyWith<_$ChatMessageSendedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatMessageDeletedImplCopyWith<$Res>
    implements $ChatEventCopyWith<$Res> {
  factory _$$ChatMessageDeletedImplCopyWith(
    _$ChatMessageDeletedImpl value,
    $Res Function(_$ChatMessageDeletedImpl) then,
  ) = __$$ChatMessageDeletedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MessageEntity message, String chatRoomId});
}

/// @nodoc
class __$$ChatMessageDeletedImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$ChatMessageDeletedImpl>
    implements _$$ChatMessageDeletedImplCopyWith<$Res> {
  __$$ChatMessageDeletedImplCopyWithImpl(
    _$ChatMessageDeletedImpl _value,
    $Res Function(_$ChatMessageDeletedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? chatRoomId = null}) {
    return _then(
      _$ChatMessageDeletedImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as MessageEntity,
        chatRoomId: null == chatRoomId
            ? _value.chatRoomId
            : chatRoomId // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ChatMessageDeletedImpl implements ChatMessageDeleted {
  const _$ChatMessageDeletedImpl({
    required this.message,
    required this.chatRoomId,
  });

  @override
  final MessageEntity message;
  @override
  final String chatRoomId;

  @override
  String toString() {
    return 'ChatEvent.messageDeleted(message: $message, chatRoomId: $chatRoomId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatMessageDeletedImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.chatRoomId, chatRoomId) ||
                other.chatRoomId == chatRoomId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, chatRoomId);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatMessageDeletedImplCopyWith<_$ChatMessageDeletedImpl> get copyWith =>
      __$$ChatMessageDeletedImplCopyWithImpl<_$ChatMessageDeletedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String chatRoomId) subscriptionRequested,
    required TResult Function(MessageEntity message, String chatRoomId)
    messageSended,
    required TResult Function(MessageEntity message, String chatRoomId)
    messageDeleted,
  }) {
    return messageDeleted(message, chatRoomId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String chatRoomId)? subscriptionRequested,
    TResult? Function(MessageEntity message, String chatRoomId)? messageSended,
    TResult? Function(MessageEntity message, String chatRoomId)? messageDeleted,
  }) {
    return messageDeleted?.call(message, chatRoomId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chatRoomId)? subscriptionRequested,
    TResult Function(MessageEntity message, String chatRoomId)? messageSended,
    TResult Function(MessageEntity message, String chatRoomId)? messageDeleted,
    required TResult orElse(),
  }) {
    if (messageDeleted != null) {
      return messageDeleted(message, chatRoomId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatSubscriptionRequested value)
    subscriptionRequested,
    required TResult Function(ChatMessageSended value) messageSended,
    required TResult Function(ChatMessageDeleted value) messageDeleted,
  }) {
    return messageDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatSubscriptionRequested value)? subscriptionRequested,
    TResult? Function(ChatMessageSended value)? messageSended,
    TResult? Function(ChatMessageDeleted value)? messageDeleted,
  }) {
    return messageDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatSubscriptionRequested value)? subscriptionRequested,
    TResult Function(ChatMessageSended value)? messageSended,
    TResult Function(ChatMessageDeleted value)? messageDeleted,
    required TResult orElse(),
  }) {
    if (messageDeleted != null) {
      return messageDeleted(this);
    }
    return orElse();
  }
}

abstract class ChatMessageDeleted implements ChatEvent {
  const factory ChatMessageDeleted({
    required final MessageEntity message,
    required final String chatRoomId,
  }) = _$ChatMessageDeletedImpl;

  MessageEntity get message;
  @override
  String get chatRoomId;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatMessageDeletedImplCopyWith<_$ChatMessageDeletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatState {
  ChatStatus get status => throw _privateConstructorUsedError;
  List<MessageEntity> get messages => throw _privateConstructorUsedError;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
  @useResult
  $Res call({ChatStatus status, List<MessageEntity> messages});
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null, Object? messages = null}) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as ChatStatus,
            messages: null == messages
                ? _value.messages
                : messages // ignore: cast_nullable_to_non_nullable
                      as List<MessageEntity>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChatStateImplCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$ChatStateImplCopyWith(
    _$ChatStateImpl value,
    $Res Function(_$ChatStateImpl) then,
  ) = __$$ChatStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChatStatus status, List<MessageEntity> messages});
}

/// @nodoc
class __$$ChatStateImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatStateImpl>
    implements _$$ChatStateImplCopyWith<$Res> {
  __$$ChatStateImplCopyWithImpl(
    _$ChatStateImpl _value,
    $Res Function(_$ChatStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null, Object? messages = null}) {
    return _then(
      _$ChatStateImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as ChatStatus,
        messages: null == messages
            ? _value._messages
            : messages // ignore: cast_nullable_to_non_nullable
                  as List<MessageEntity>,
      ),
    );
  }
}

/// @nodoc

class _$ChatStateImpl implements _ChatState {
  const _$ChatStateImpl({
    this.status = ChatStatus.initial,
    final List<MessageEntity> messages = const [],
  }) : _messages = messages;

  @override
  @JsonKey()
  final ChatStatus status;
  final List<MessageEntity> _messages;
  @override
  @JsonKey()
  List<MessageEntity> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ChatState(status: $status, messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    const DeepCollectionEquality().hash(_messages),
  );

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatStateImplCopyWith<_$ChatStateImpl> get copyWith =>
      __$$ChatStateImplCopyWithImpl<_$ChatStateImpl>(this, _$identity);
}

abstract class _ChatState implements ChatState {
  const factory _ChatState({
    final ChatStatus status,
    final List<MessageEntity> messages,
  }) = _$ChatStateImpl;

  @override
  ChatStatus get status;
  @override
  List<MessageEntity> get messages;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatStateImplCopyWith<_$ChatStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
