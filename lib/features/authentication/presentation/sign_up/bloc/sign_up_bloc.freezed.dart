// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SignUpEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String email,
      String password,
      String firstName,
      String lastName,
    )
    signUpSubmitted,
    required TResult Function() togglePasswordVisibility,
    required TResult Function() toggleRepeatPasswordVisibility,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      String email,
      String password,
      String firstName,
      String lastName,
    )?
    signUpSubmitted,
    TResult? Function()? togglePasswordVisibility,
    TResult? Function()? toggleRepeatPasswordVisibility,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      String email,
      String password,
      String firstName,
      String lastName,
    )?
    signUpSubmitted,
    TResult Function()? togglePasswordVisibility,
    TResult Function()? toggleRepeatPasswordVisibility,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpSubmitted value) signUpSubmitted,
    required TResult Function(TogglePasswordVisibility value)
    togglePasswordVisibility,
    required TResult Function(ToggleRepeatPasswordVisibility value)
    toggleRepeatPasswordVisibility,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpSubmitted value)? signUpSubmitted,
    TResult? Function(TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult? Function(ToggleRepeatPasswordVisibility value)?
    toggleRepeatPasswordVisibility,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpSubmitted value)? signUpSubmitted,
    TResult Function(TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult Function(ToggleRepeatPasswordVisibility value)?
    toggleRepeatPasswordVisibility,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpEventCopyWith<$Res> {
  factory $SignUpEventCopyWith(
    SignUpEvent value,
    $Res Function(SignUpEvent) then,
  ) = _$SignUpEventCopyWithImpl<$Res, SignUpEvent>;
}

/// @nodoc
class _$SignUpEventCopyWithImpl<$Res, $Val extends SignUpEvent>
    implements $SignUpEventCopyWith<$Res> {
  _$SignUpEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SignUpSubmittedImplCopyWith<$Res> {
  factory _$$SignUpSubmittedImplCopyWith(
    _$SignUpSubmittedImpl value,
    $Res Function(_$SignUpSubmittedImpl) then,
  ) = __$$SignUpSubmittedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password, String firstName, String lastName});
}

/// @nodoc
class __$$SignUpSubmittedImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$SignUpSubmittedImpl>
    implements _$$SignUpSubmittedImplCopyWith<$Res> {
  __$$SignUpSubmittedImplCopyWithImpl(
    _$SignUpSubmittedImpl _value,
    $Res Function(_$SignUpSubmittedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? firstName = null,
    Object? lastName = null,
  }) {
    return _then(
      _$SignUpSubmittedImpl(
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        password: null == password
            ? _value.password
            : password // ignore: cast_nullable_to_non_nullable
                  as String,
        firstName: null == firstName
            ? _value.firstName
            : firstName // ignore: cast_nullable_to_non_nullable
                  as String,
        lastName: null == lastName
            ? _value.lastName
            : lastName // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$SignUpSubmittedImpl
    with DiagnosticableTreeMixin
    implements SignUpSubmitted {
  const _$SignUpSubmittedImpl({
    required this.email,
    required this.password,
    required this.firstName,
    required this.lastName,
  });

  @override
  final String email;
  @override
  final String password;
  @override
  final String firstName;
  @override
  final String lastName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpEvent.signUpSubmitted(email: $email, password: $password, firstName: $firstName, lastName: $lastName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpEvent.signUpSubmitted'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpSubmittedImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, email, password, firstName, lastName);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpSubmittedImplCopyWith<_$SignUpSubmittedImpl> get copyWith =>
      __$$SignUpSubmittedImplCopyWithImpl<_$SignUpSubmittedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String email,
      String password,
      String firstName,
      String lastName,
    )
    signUpSubmitted,
    required TResult Function() togglePasswordVisibility,
    required TResult Function() toggleRepeatPasswordVisibility,
  }) {
    return signUpSubmitted(email, password, firstName, lastName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      String email,
      String password,
      String firstName,
      String lastName,
    )?
    signUpSubmitted,
    TResult? Function()? togglePasswordVisibility,
    TResult? Function()? toggleRepeatPasswordVisibility,
  }) {
    return signUpSubmitted?.call(email, password, firstName, lastName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      String email,
      String password,
      String firstName,
      String lastName,
    )?
    signUpSubmitted,
    TResult Function()? togglePasswordVisibility,
    TResult Function()? toggleRepeatPasswordVisibility,
    required TResult orElse(),
  }) {
    if (signUpSubmitted != null) {
      return signUpSubmitted(email, password, firstName, lastName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpSubmitted value) signUpSubmitted,
    required TResult Function(TogglePasswordVisibility value)
    togglePasswordVisibility,
    required TResult Function(ToggleRepeatPasswordVisibility value)
    toggleRepeatPasswordVisibility,
  }) {
    return signUpSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpSubmitted value)? signUpSubmitted,
    TResult? Function(TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult? Function(ToggleRepeatPasswordVisibility value)?
    toggleRepeatPasswordVisibility,
  }) {
    return signUpSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpSubmitted value)? signUpSubmitted,
    TResult Function(TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult Function(ToggleRepeatPasswordVisibility value)?
    toggleRepeatPasswordVisibility,
    required TResult orElse(),
  }) {
    if (signUpSubmitted != null) {
      return signUpSubmitted(this);
    }
    return orElse();
  }
}

abstract class SignUpSubmitted implements SignUpEvent {
  const factory SignUpSubmitted({
    required final String email,
    required final String password,
    required final String firstName,
    required final String lastName,
  }) = _$SignUpSubmittedImpl;

  String get email;
  String get password;
  String get firstName;
  String get lastName;

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpSubmittedImplCopyWith<_$SignUpSubmittedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TogglePasswordVisibilityImplCopyWith<$Res> {
  factory _$$TogglePasswordVisibilityImplCopyWith(
    _$TogglePasswordVisibilityImpl value,
    $Res Function(_$TogglePasswordVisibilityImpl) then,
  ) = __$$TogglePasswordVisibilityImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TogglePasswordVisibilityImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$TogglePasswordVisibilityImpl>
    implements _$$TogglePasswordVisibilityImplCopyWith<$Res> {
  __$$TogglePasswordVisibilityImplCopyWithImpl(
    _$TogglePasswordVisibilityImpl _value,
    $Res Function(_$TogglePasswordVisibilityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TogglePasswordVisibilityImpl
    with DiagnosticableTreeMixin
    implements TogglePasswordVisibility {
  const _$TogglePasswordVisibilityImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpEvent.togglePasswordVisibility()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(
      DiagnosticsProperty('type', 'SignUpEvent.togglePasswordVisibility'),
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TogglePasswordVisibilityImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String email,
      String password,
      String firstName,
      String lastName,
    )
    signUpSubmitted,
    required TResult Function() togglePasswordVisibility,
    required TResult Function() toggleRepeatPasswordVisibility,
  }) {
    return togglePasswordVisibility();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      String email,
      String password,
      String firstName,
      String lastName,
    )?
    signUpSubmitted,
    TResult? Function()? togglePasswordVisibility,
    TResult? Function()? toggleRepeatPasswordVisibility,
  }) {
    return togglePasswordVisibility?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      String email,
      String password,
      String firstName,
      String lastName,
    )?
    signUpSubmitted,
    TResult Function()? togglePasswordVisibility,
    TResult Function()? toggleRepeatPasswordVisibility,
    required TResult orElse(),
  }) {
    if (togglePasswordVisibility != null) {
      return togglePasswordVisibility();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpSubmitted value) signUpSubmitted,
    required TResult Function(TogglePasswordVisibility value)
    togglePasswordVisibility,
    required TResult Function(ToggleRepeatPasswordVisibility value)
    toggleRepeatPasswordVisibility,
  }) {
    return togglePasswordVisibility(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpSubmitted value)? signUpSubmitted,
    TResult? Function(TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult? Function(ToggleRepeatPasswordVisibility value)?
    toggleRepeatPasswordVisibility,
  }) {
    return togglePasswordVisibility?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpSubmitted value)? signUpSubmitted,
    TResult Function(TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult Function(ToggleRepeatPasswordVisibility value)?
    toggleRepeatPasswordVisibility,
    required TResult orElse(),
  }) {
    if (togglePasswordVisibility != null) {
      return togglePasswordVisibility(this);
    }
    return orElse();
  }
}

abstract class TogglePasswordVisibility implements SignUpEvent {
  const factory TogglePasswordVisibility() = _$TogglePasswordVisibilityImpl;
}

/// @nodoc
abstract class _$$ToggleRepeatPasswordVisibilityImplCopyWith<$Res> {
  factory _$$ToggleRepeatPasswordVisibilityImplCopyWith(
    _$ToggleRepeatPasswordVisibilityImpl value,
    $Res Function(_$ToggleRepeatPasswordVisibilityImpl) then,
  ) = __$$ToggleRepeatPasswordVisibilityImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleRepeatPasswordVisibilityImplCopyWithImpl<$Res>
    extends
        _$SignUpEventCopyWithImpl<$Res, _$ToggleRepeatPasswordVisibilityImpl>
    implements _$$ToggleRepeatPasswordVisibilityImplCopyWith<$Res> {
  __$$ToggleRepeatPasswordVisibilityImplCopyWithImpl(
    _$ToggleRepeatPasswordVisibilityImpl _value,
    $Res Function(_$ToggleRepeatPasswordVisibilityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ToggleRepeatPasswordVisibilityImpl
    with DiagnosticableTreeMixin
    implements ToggleRepeatPasswordVisibility {
  const _$ToggleRepeatPasswordVisibilityImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpEvent.toggleRepeatPasswordVisibility()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(
      DiagnosticsProperty('type', 'SignUpEvent.toggleRepeatPasswordVisibility'),
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleRepeatPasswordVisibilityImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String email,
      String password,
      String firstName,
      String lastName,
    )
    signUpSubmitted,
    required TResult Function() togglePasswordVisibility,
    required TResult Function() toggleRepeatPasswordVisibility,
  }) {
    return toggleRepeatPasswordVisibility();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      String email,
      String password,
      String firstName,
      String lastName,
    )?
    signUpSubmitted,
    TResult? Function()? togglePasswordVisibility,
    TResult? Function()? toggleRepeatPasswordVisibility,
  }) {
    return toggleRepeatPasswordVisibility?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      String email,
      String password,
      String firstName,
      String lastName,
    )?
    signUpSubmitted,
    TResult Function()? togglePasswordVisibility,
    TResult Function()? toggleRepeatPasswordVisibility,
    required TResult orElse(),
  }) {
    if (toggleRepeatPasswordVisibility != null) {
      return toggleRepeatPasswordVisibility();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpSubmitted value) signUpSubmitted,
    required TResult Function(TogglePasswordVisibility value)
    togglePasswordVisibility,
    required TResult Function(ToggleRepeatPasswordVisibility value)
    toggleRepeatPasswordVisibility,
  }) {
    return toggleRepeatPasswordVisibility(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpSubmitted value)? signUpSubmitted,
    TResult? Function(TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult? Function(ToggleRepeatPasswordVisibility value)?
    toggleRepeatPasswordVisibility,
  }) {
    return toggleRepeatPasswordVisibility?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpSubmitted value)? signUpSubmitted,
    TResult Function(TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult Function(ToggleRepeatPasswordVisibility value)?
    toggleRepeatPasswordVisibility,
    required TResult orElse(),
  }) {
    if (toggleRepeatPasswordVisibility != null) {
      return toggleRepeatPasswordVisibility(this);
    }
    return orElse();
  }
}

abstract class ToggleRepeatPasswordVisibility implements SignUpEvent {
  const factory ToggleRepeatPasswordVisibility() =
      _$ToggleRepeatPasswordVisibilityImpl;
}

/// @nodoc
mixin _$SignUpState {
  SignUpStatus get status => throw _privateConstructorUsedError;
  bool get isPasswordHidden => throw _privateConstructorUsedError;
  bool get isRepeatPasswordHidden => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignUpStateCopyWith<SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
    SignUpState value,
    $Res Function(SignUpState) then,
  ) = _$SignUpStateCopyWithImpl<$Res, SignUpState>;
  @useResult
  $Res call({
    SignUpStatus status,
    bool isPasswordHidden,
    bool isRepeatPasswordHidden,
    String? errorMessage,
  });
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res, $Val extends SignUpState>
    implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? isPasswordHidden = null,
    Object? isRepeatPasswordHidden = null,
    Object? errorMessage = freezed,
  }) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as SignUpStatus,
            isPasswordHidden: null == isPasswordHidden
                ? _value.isPasswordHidden
                : isPasswordHidden // ignore: cast_nullable_to_non_nullable
                      as bool,
            isRepeatPasswordHidden: null == isRepeatPasswordHidden
                ? _value.isRepeatPasswordHidden
                : isRepeatPasswordHidden // ignore: cast_nullable_to_non_nullable
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
abstract class _$$SignUpStateImplCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$$SignUpStateImplCopyWith(
    _$SignUpStateImpl value,
    $Res Function(_$SignUpStateImpl) then,
  ) = __$$SignUpStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    SignUpStatus status,
    bool isPasswordHidden,
    bool isRepeatPasswordHidden,
    String? errorMessage,
  });
}

/// @nodoc
class __$$SignUpStateImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpStateImpl>
    implements _$$SignUpStateImplCopyWith<$Res> {
  __$$SignUpStateImplCopyWithImpl(
    _$SignUpStateImpl _value,
    $Res Function(_$SignUpStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? isPasswordHidden = null,
    Object? isRepeatPasswordHidden = null,
    Object? errorMessage = freezed,
  }) {
    return _then(
      _$SignUpStateImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as SignUpStatus,
        isPasswordHidden: null == isPasswordHidden
            ? _value.isPasswordHidden
            : isPasswordHidden // ignore: cast_nullable_to_non_nullable
                  as bool,
        isRepeatPasswordHidden: null == isRepeatPasswordHidden
            ? _value.isRepeatPasswordHidden
            : isRepeatPasswordHidden // ignore: cast_nullable_to_non_nullable
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

class _$SignUpStateImpl with DiagnosticableTreeMixin implements _SignUpState {
  const _$SignUpStateImpl({
    this.status = SignUpStatus.initial,
    this.isPasswordHidden = true,
    this.isRepeatPasswordHidden = true,
    this.errorMessage,
  });

  @override
  @JsonKey()
  final SignUpStatus status;
  @override
  @JsonKey()
  final bool isPasswordHidden;
  @override
  @JsonKey()
  final bool isRepeatPasswordHidden;
  @override
  final String? errorMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpState(status: $status, isPasswordHidden: $isPasswordHidden, isRepeatPasswordHidden: $isRepeatPasswordHidden, errorMessage: $errorMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('isPasswordHidden', isPasswordHidden))
      ..add(
        DiagnosticsProperty('isRepeatPasswordHidden', isRepeatPasswordHidden),
      )
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isPasswordHidden, isPasswordHidden) ||
                other.isPasswordHidden == isPasswordHidden) &&
            (identical(other.isRepeatPasswordHidden, isRepeatPasswordHidden) ||
                other.isRepeatPasswordHidden == isRepeatPasswordHidden) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    isPasswordHidden,
    isRepeatPasswordHidden,
    errorMessage,
  );

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpStateImplCopyWith<_$SignUpStateImpl> get copyWith =>
      __$$SignUpStateImplCopyWithImpl<_$SignUpStateImpl>(this, _$identity);
}

abstract class _SignUpState implements SignUpState {
  const factory _SignUpState({
    final SignUpStatus status,
    final bool isPasswordHidden,
    final bool isRepeatPasswordHidden,
    final String? errorMessage,
  }) = _$SignUpStateImpl;

  @override
  SignUpStatus get status;
  @override
  bool get isPasswordHidden;
  @override
  bool get isRepeatPasswordHidden;
  @override
  String? get errorMessage;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpStateImplCopyWith<_$SignUpStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
