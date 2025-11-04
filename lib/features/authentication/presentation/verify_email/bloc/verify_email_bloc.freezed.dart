// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_email_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$VerifyEmailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() sendVerificationEmail,
    required TResult Function() checkEmailVerified,
    required TResult Function() cancelVerification,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? sendVerificationEmail,
    TResult? Function()? checkEmailVerified,
    TResult? Function()? cancelVerification,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? sendVerificationEmail,
    TResult Function()? checkEmailVerified,
    TResult Function()? cancelVerification,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendVerificationEmail value)
    sendVerificationEmail,
    required TResult Function(CheckEmailVerified value) checkEmailVerified,
    required TResult Function(CancelVerification value) cancelVerification,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendVerificationEmail value)? sendVerificationEmail,
    TResult? Function(CheckEmailVerified value)? checkEmailVerified,
    TResult? Function(CancelVerification value)? cancelVerification,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendVerificationEmail value)? sendVerificationEmail,
    TResult Function(CheckEmailVerified value)? checkEmailVerified,
    TResult Function(CancelVerification value)? cancelVerification,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyEmailEventCopyWith<$Res> {
  factory $VerifyEmailEventCopyWith(
    VerifyEmailEvent value,
    $Res Function(VerifyEmailEvent) then,
  ) = _$VerifyEmailEventCopyWithImpl<$Res, VerifyEmailEvent>;
}

/// @nodoc
class _$VerifyEmailEventCopyWithImpl<$Res, $Val extends VerifyEmailEvent>
    implements $VerifyEmailEventCopyWith<$Res> {
  _$VerifyEmailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerifyEmailEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SendVerificationEmailImplCopyWith<$Res> {
  factory _$$SendVerificationEmailImplCopyWith(
    _$SendVerificationEmailImpl value,
    $Res Function(_$SendVerificationEmailImpl) then,
  ) = __$$SendVerificationEmailImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendVerificationEmailImplCopyWithImpl<$Res>
    extends _$VerifyEmailEventCopyWithImpl<$Res, _$SendVerificationEmailImpl>
    implements _$$SendVerificationEmailImplCopyWith<$Res> {
  __$$SendVerificationEmailImplCopyWithImpl(
    _$SendVerificationEmailImpl _value,
    $Res Function(_$SendVerificationEmailImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VerifyEmailEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SendVerificationEmailImpl implements SendVerificationEmail {
  const _$SendVerificationEmailImpl();

  @override
  String toString() {
    return 'VerifyEmailEvent.sendVerificationEmail()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendVerificationEmailImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() sendVerificationEmail,
    required TResult Function() checkEmailVerified,
    required TResult Function() cancelVerification,
  }) {
    return sendVerificationEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? sendVerificationEmail,
    TResult? Function()? checkEmailVerified,
    TResult? Function()? cancelVerification,
  }) {
    return sendVerificationEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? sendVerificationEmail,
    TResult Function()? checkEmailVerified,
    TResult Function()? cancelVerification,
    required TResult orElse(),
  }) {
    if (sendVerificationEmail != null) {
      return sendVerificationEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendVerificationEmail value)
    sendVerificationEmail,
    required TResult Function(CheckEmailVerified value) checkEmailVerified,
    required TResult Function(CancelVerification value) cancelVerification,
  }) {
    return sendVerificationEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendVerificationEmail value)? sendVerificationEmail,
    TResult? Function(CheckEmailVerified value)? checkEmailVerified,
    TResult? Function(CancelVerification value)? cancelVerification,
  }) {
    return sendVerificationEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendVerificationEmail value)? sendVerificationEmail,
    TResult Function(CheckEmailVerified value)? checkEmailVerified,
    TResult Function(CancelVerification value)? cancelVerification,
    required TResult orElse(),
  }) {
    if (sendVerificationEmail != null) {
      return sendVerificationEmail(this);
    }
    return orElse();
  }
}

abstract class SendVerificationEmail implements VerifyEmailEvent {
  const factory SendVerificationEmail() = _$SendVerificationEmailImpl;
}

/// @nodoc
abstract class _$$CheckEmailVerifiedImplCopyWith<$Res> {
  factory _$$CheckEmailVerifiedImplCopyWith(
    _$CheckEmailVerifiedImpl value,
    $Res Function(_$CheckEmailVerifiedImpl) then,
  ) = __$$CheckEmailVerifiedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckEmailVerifiedImplCopyWithImpl<$Res>
    extends _$VerifyEmailEventCopyWithImpl<$Res, _$CheckEmailVerifiedImpl>
    implements _$$CheckEmailVerifiedImplCopyWith<$Res> {
  __$$CheckEmailVerifiedImplCopyWithImpl(
    _$CheckEmailVerifiedImpl _value,
    $Res Function(_$CheckEmailVerifiedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VerifyEmailEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CheckEmailVerifiedImpl implements CheckEmailVerified {
  const _$CheckEmailVerifiedImpl();

  @override
  String toString() {
    return 'VerifyEmailEvent.checkEmailVerified()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckEmailVerifiedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() sendVerificationEmail,
    required TResult Function() checkEmailVerified,
    required TResult Function() cancelVerification,
  }) {
    return checkEmailVerified();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? sendVerificationEmail,
    TResult? Function()? checkEmailVerified,
    TResult? Function()? cancelVerification,
  }) {
    return checkEmailVerified?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? sendVerificationEmail,
    TResult Function()? checkEmailVerified,
    TResult Function()? cancelVerification,
    required TResult orElse(),
  }) {
    if (checkEmailVerified != null) {
      return checkEmailVerified();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendVerificationEmail value)
    sendVerificationEmail,
    required TResult Function(CheckEmailVerified value) checkEmailVerified,
    required TResult Function(CancelVerification value) cancelVerification,
  }) {
    return checkEmailVerified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendVerificationEmail value)? sendVerificationEmail,
    TResult? Function(CheckEmailVerified value)? checkEmailVerified,
    TResult? Function(CancelVerification value)? cancelVerification,
  }) {
    return checkEmailVerified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendVerificationEmail value)? sendVerificationEmail,
    TResult Function(CheckEmailVerified value)? checkEmailVerified,
    TResult Function(CancelVerification value)? cancelVerification,
    required TResult orElse(),
  }) {
    if (checkEmailVerified != null) {
      return checkEmailVerified(this);
    }
    return orElse();
  }
}

abstract class CheckEmailVerified implements VerifyEmailEvent {
  const factory CheckEmailVerified() = _$CheckEmailVerifiedImpl;
}

/// @nodoc
abstract class _$$CancelVerificationImplCopyWith<$Res> {
  factory _$$CancelVerificationImplCopyWith(
    _$CancelVerificationImpl value,
    $Res Function(_$CancelVerificationImpl) then,
  ) = __$$CancelVerificationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CancelVerificationImplCopyWithImpl<$Res>
    extends _$VerifyEmailEventCopyWithImpl<$Res, _$CancelVerificationImpl>
    implements _$$CancelVerificationImplCopyWith<$Res> {
  __$$CancelVerificationImplCopyWithImpl(
    _$CancelVerificationImpl _value,
    $Res Function(_$CancelVerificationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VerifyEmailEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CancelVerificationImpl implements CancelVerification {
  const _$CancelVerificationImpl();

  @override
  String toString() {
    return 'VerifyEmailEvent.cancelVerification()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CancelVerificationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() sendVerificationEmail,
    required TResult Function() checkEmailVerified,
    required TResult Function() cancelVerification,
  }) {
    return cancelVerification();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? sendVerificationEmail,
    TResult? Function()? checkEmailVerified,
    TResult? Function()? cancelVerification,
  }) {
    return cancelVerification?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? sendVerificationEmail,
    TResult Function()? checkEmailVerified,
    TResult Function()? cancelVerification,
    required TResult orElse(),
  }) {
    if (cancelVerification != null) {
      return cancelVerification();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendVerificationEmail value)
    sendVerificationEmail,
    required TResult Function(CheckEmailVerified value) checkEmailVerified,
    required TResult Function(CancelVerification value) cancelVerification,
  }) {
    return cancelVerification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendVerificationEmail value)? sendVerificationEmail,
    TResult? Function(CheckEmailVerified value)? checkEmailVerified,
    TResult? Function(CancelVerification value)? cancelVerification,
  }) {
    return cancelVerification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendVerificationEmail value)? sendVerificationEmail,
    TResult Function(CheckEmailVerified value)? checkEmailVerified,
    TResult Function(CancelVerification value)? cancelVerification,
    required TResult orElse(),
  }) {
    if (cancelVerification != null) {
      return cancelVerification(this);
    }
    return orElse();
  }
}

abstract class CancelVerification implements VerifyEmailEvent {
  const factory CancelVerification() = _$CancelVerificationImpl;
}

/// @nodoc
mixin _$VerifyEmailState {
  VerifyEmailStatus get status => throw _privateConstructorUsedError;
  bool get canResendEmail => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of VerifyEmailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerifyEmailStateCopyWith<VerifyEmailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyEmailStateCopyWith<$Res> {
  factory $VerifyEmailStateCopyWith(
    VerifyEmailState value,
    $Res Function(VerifyEmailState) then,
  ) = _$VerifyEmailStateCopyWithImpl<$Res, VerifyEmailState>;
  @useResult
  $Res call({
    VerifyEmailStatus status,
    bool canResendEmail,
    String? errorMessage,
  });
}

/// @nodoc
class _$VerifyEmailStateCopyWithImpl<$Res, $Val extends VerifyEmailState>
    implements $VerifyEmailStateCopyWith<$Res> {
  _$VerifyEmailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerifyEmailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? canResendEmail = null,
    Object? errorMessage = freezed,
  }) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as VerifyEmailStatus,
            canResendEmail: null == canResendEmail
                ? _value.canResendEmail
                : canResendEmail // ignore: cast_nullable_to_non_nullable
                      as bool,
            errorMessage: freezed == errorMessage
                ? _value.errorMessage
                : errorMessage // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$VerifyEmailStateImplCopyWith<$Res>
    implements $VerifyEmailStateCopyWith<$Res> {
  factory _$$VerifyEmailStateImplCopyWith(
    _$VerifyEmailStateImpl value,
    $Res Function(_$VerifyEmailStateImpl) then,
  ) = __$$VerifyEmailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    VerifyEmailStatus status,
    bool canResendEmail,
    String? errorMessage,
  });
}

/// @nodoc
class __$$VerifyEmailStateImplCopyWithImpl<$Res>
    extends _$VerifyEmailStateCopyWithImpl<$Res, _$VerifyEmailStateImpl>
    implements _$$VerifyEmailStateImplCopyWith<$Res> {
  __$$VerifyEmailStateImplCopyWithImpl(
    _$VerifyEmailStateImpl _value,
    $Res Function(_$VerifyEmailStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VerifyEmailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? canResendEmail = null,
    Object? errorMessage = freezed,
  }) {
    return _then(
      _$VerifyEmailStateImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as VerifyEmailStatus,
        canResendEmail: null == canResendEmail
            ? _value.canResendEmail
            : canResendEmail // ignore: cast_nullable_to_non_nullable
                  as bool,
        errorMessage: freezed == errorMessage
            ? _value.errorMessage
            : errorMessage // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$VerifyEmailStateImpl implements _VerifyEmailState {
  const _$VerifyEmailStateImpl({
    this.status = VerifyEmailStatus.initial,
    this.canResendEmail = false,
    this.errorMessage,
  });

  @override
  @JsonKey()
  final VerifyEmailStatus status;
  @override
  @JsonKey()
  final bool canResendEmail;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'VerifyEmailState(status: $status, canResendEmail: $canResendEmail, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyEmailStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.canResendEmail, canResendEmail) ||
                other.canResendEmail == canResendEmail) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, canResendEmail, errorMessage);

  /// Create a copy of VerifyEmailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyEmailStateImplCopyWith<_$VerifyEmailStateImpl> get copyWith =>
      __$$VerifyEmailStateImplCopyWithImpl<_$VerifyEmailStateImpl>(
        this,
        _$identity,
      );
}

abstract class _VerifyEmailState implements VerifyEmailState {
  const factory _VerifyEmailState({
    final VerifyEmailStatus status,
    final bool canResendEmail,
    final String? errorMessage,
  }) = _$VerifyEmailStateImpl;

  @override
  VerifyEmailStatus get status;
  @override
  bool get canResendEmail;
  @override
  String? get errorMessage;

  /// Create a copy of VerifyEmailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyEmailStateImplCopyWith<_$VerifyEmailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
