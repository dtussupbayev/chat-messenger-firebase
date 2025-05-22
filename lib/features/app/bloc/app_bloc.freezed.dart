// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AppState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() splash,
    required TResult Function() onBoardingRequired,
    required TResult Function(User user) authenticated,
    required TResult Function() unAuthenticated,
    required TResult Function() notVerified,
  }) => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? splash,
    TResult? Function()? onBoardingRequired,
    TResult? Function(User user)? authenticated,
    TResult? Function()? unAuthenticated,
    TResult? Function()? notVerified,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,

    TResult Function()? splash,

    TResult Function()? onBoardingRequired,

    TResult Function(User user)? authenticated,

    TResult Function()? unAuthenticated,

    TResult Function()? notVerified,

    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppInitial value) initial,
    required TResult Function(AppSplash value) splash,
    required TResult Function(AppOnBoardingRequired value) onBoardingRequired,
    required TResult Function(AppAuthenticated value) authenticated,
    required TResult Function(AppUnauthenticated value) unAuthenticated,
    required TResult Function(AppNotVerified value) notVerified,
  }) => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppInitial value)? initial,
    TResult? Function(AppSplash value)? splash,
    TResult? Function(AppOnBoardingRequired value)? onBoardingRequired,
    TResult? Function(AppAuthenticated value)? authenticated,
    TResult? Function(AppUnauthenticated value)? unAuthenticated,
    TResult? Function(AppNotVerified value)? notVerified,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppInitial value)? initial,
    TResult Function(AppSplash value)? splash,
    TResult Function(AppOnBoardingRequired value)? onBoardingRequired,
    TResult Function(AppAuthenticated value)? authenticated,
    TResult Function(AppUnauthenticated value)? unAuthenticated,
    TResult Function(AppNotVerified value)? notVerified,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AppInitialImplCopyWith<$Res> {
  factory _$$AppInitialImplCopyWith(
    _$AppInitialImpl value,
    $Res Function(_$AppInitialImpl) then,
  ) = __$$AppInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppInitialImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppInitialImpl>
    implements _$$AppInitialImplCopyWith<$Res> {
  __$$AppInitialImplCopyWithImpl(
    _$AppInitialImpl _value,
    $Res Function(_$AppInitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AppInitialImpl implements AppInitial {
  const _$AppInitialImpl();

  @override
  String toString() {
    return 'AppState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() splash,
    required TResult Function() onBoardingRequired,
    required TResult Function(User user) authenticated,
    required TResult Function() unAuthenticated,
    required TResult Function() notVerified,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? splash,
    TResult? Function()? onBoardingRequired,
    TResult? Function(User user)? authenticated,
    TResult? Function()? unAuthenticated,
    TResult? Function()? notVerified,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? splash,
    TResult Function()? onBoardingRequired,
    TResult Function(User user)? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function()? notVerified,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppInitial value) initial,
    required TResult Function(AppSplash value) splash,
    required TResult Function(AppOnBoardingRequired value) onBoardingRequired,
    required TResult Function(AppAuthenticated value) authenticated,
    required TResult Function(AppUnauthenticated value) unAuthenticated,
    required TResult Function(AppNotVerified value) notVerified,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppInitial value)? initial,
    TResult? Function(AppSplash value)? splash,
    TResult? Function(AppOnBoardingRequired value)? onBoardingRequired,
    TResult? Function(AppAuthenticated value)? authenticated,
    TResult? Function(AppUnauthenticated value)? unAuthenticated,
    TResult? Function(AppNotVerified value)? notVerified,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppInitial value)? initial,
    TResult Function(AppSplash value)? splash,
    TResult Function(AppOnBoardingRequired value)? onBoardingRequired,
    TResult Function(AppAuthenticated value)? authenticated,
    TResult Function(AppUnauthenticated value)? unAuthenticated,
    TResult Function(AppNotVerified value)? notVerified,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AppInitial implements AppState {
  const factory AppInitial() = _$AppInitialImpl;
}

/// @nodoc
abstract class _$$AppSplashImplCopyWith<$Res> {
  factory _$$AppSplashImplCopyWith(
    _$AppSplashImpl value,
    $Res Function(_$AppSplashImpl) then,
  ) = __$$AppSplashImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppSplashImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppSplashImpl>
    implements _$$AppSplashImplCopyWith<$Res> {
  __$$AppSplashImplCopyWithImpl(
    _$AppSplashImpl _value,
    $Res Function(_$AppSplashImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AppSplashImpl implements AppSplash {
  const _$AppSplashImpl();

  @override
  String toString() {
    return 'AppState.splash()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppSplashImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() splash,
    required TResult Function() onBoardingRequired,
    required TResult Function(User user) authenticated,
    required TResult Function() unAuthenticated,
    required TResult Function() notVerified,
  }) {
    return splash();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? splash,
    TResult? Function()? onBoardingRequired,
    TResult? Function(User user)? authenticated,
    TResult? Function()? unAuthenticated,
    TResult? Function()? notVerified,
  }) {
    return splash?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? splash,
    TResult Function()? onBoardingRequired,
    TResult Function(User user)? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function()? notVerified,
    required TResult orElse(),
  }) {
    if (splash != null) {
      return splash();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppInitial value) initial,
    required TResult Function(AppSplash value) splash,
    required TResult Function(AppOnBoardingRequired value) onBoardingRequired,
    required TResult Function(AppAuthenticated value) authenticated,
    required TResult Function(AppUnauthenticated value) unAuthenticated,
    required TResult Function(AppNotVerified value) notVerified,
  }) {
    return splash(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppInitial value)? initial,
    TResult? Function(AppSplash value)? splash,
    TResult? Function(AppOnBoardingRequired value)? onBoardingRequired,
    TResult? Function(AppAuthenticated value)? authenticated,
    TResult? Function(AppUnauthenticated value)? unAuthenticated,
    TResult? Function(AppNotVerified value)? notVerified,
  }) {
    return splash?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppInitial value)? initial,
    TResult Function(AppSplash value)? splash,
    TResult Function(AppOnBoardingRequired value)? onBoardingRequired,
    TResult Function(AppAuthenticated value)? authenticated,
    TResult Function(AppUnauthenticated value)? unAuthenticated,
    TResult Function(AppNotVerified value)? notVerified,
    required TResult orElse(),
  }) {
    if (splash != null) {
      return splash(this);
    }
    return orElse();
  }
}

abstract class AppSplash implements AppState {
  const factory AppSplash() = _$AppSplashImpl;
}

/// @nodoc
abstract class _$$AppOnBoardingRequiredImplCopyWith<$Res> {
  factory _$$AppOnBoardingRequiredImplCopyWith(
    _$AppOnBoardingRequiredImpl value,
    $Res Function(_$AppOnBoardingRequiredImpl) then,
  ) = __$$AppOnBoardingRequiredImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppOnBoardingRequiredImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppOnBoardingRequiredImpl>
    implements _$$AppOnBoardingRequiredImplCopyWith<$Res> {
  __$$AppOnBoardingRequiredImplCopyWithImpl(
    _$AppOnBoardingRequiredImpl _value,
    $Res Function(_$AppOnBoardingRequiredImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AppOnBoardingRequiredImpl implements AppOnBoardingRequired {
  const _$AppOnBoardingRequiredImpl();

  @override
  String toString() {
    return 'AppState.onBoardingRequired()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppOnBoardingRequiredImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() splash,
    required TResult Function() onBoardingRequired,
    required TResult Function(User user) authenticated,
    required TResult Function() unAuthenticated,
    required TResult Function() notVerified,
  }) {
    return onBoardingRequired();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? splash,
    TResult? Function()? onBoardingRequired,
    TResult? Function(User user)? authenticated,
    TResult? Function()? unAuthenticated,
    TResult? Function()? notVerified,
  }) {
    return onBoardingRequired?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? splash,
    TResult Function()? onBoardingRequired,
    TResult Function(User user)? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function()? notVerified,
    required TResult orElse(),
  }) {
    if (onBoardingRequired != null) {
      return onBoardingRequired();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppInitial value) initial,
    required TResult Function(AppSplash value) splash,
    required TResult Function(AppOnBoardingRequired value) onBoardingRequired,
    required TResult Function(AppAuthenticated value) authenticated,
    required TResult Function(AppUnauthenticated value) unAuthenticated,
    required TResult Function(AppNotVerified value) notVerified,
  }) {
    return onBoardingRequired(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppInitial value)? initial,
    TResult? Function(AppSplash value)? splash,
    TResult? Function(AppOnBoardingRequired value)? onBoardingRequired,
    TResult? Function(AppAuthenticated value)? authenticated,
    TResult? Function(AppUnauthenticated value)? unAuthenticated,
    TResult? Function(AppNotVerified value)? notVerified,
  }) {
    return onBoardingRequired?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppInitial value)? initial,
    TResult Function(AppSplash value)? splash,
    TResult Function(AppOnBoardingRequired value)? onBoardingRequired,
    TResult Function(AppAuthenticated value)? authenticated,
    TResult Function(AppUnauthenticated value)? unAuthenticated,
    TResult Function(AppNotVerified value)? notVerified,
    required TResult orElse(),
  }) {
    if (onBoardingRequired != null) {
      return onBoardingRequired(this);
    }
    return orElse();
  }
}

abstract class AppOnBoardingRequired implements AppState {
  const factory AppOnBoardingRequired() = _$AppOnBoardingRequiredImpl;
}

/// @nodoc
abstract class _$$AppAuthenticatedImplCopyWith<$Res> {
  factory _$$AppAuthenticatedImplCopyWith(
    _$AppAuthenticatedImpl value,
    $Res Function(_$AppAuthenticatedImpl) then,
  ) = __$$AppAuthenticatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$AppAuthenticatedImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppAuthenticatedImpl>
    implements _$$AppAuthenticatedImplCopyWith<$Res> {
  __$$AppAuthenticatedImplCopyWithImpl(
    _$AppAuthenticatedImpl _value,
    $Res Function(_$AppAuthenticatedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? user = null}) {
    return _then(
      _$AppAuthenticatedImpl(
        null == user
            ? _value.user
            : user // ignore: cast_nullable_to_non_nullable
                  as User,
      ),
    );
  }
}

/// @nodoc

class _$AppAuthenticatedImpl implements AppAuthenticated {
  const _$AppAuthenticatedImpl(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'AppState.authenticated(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppAuthenticatedImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppAuthenticatedImplCopyWith<_$AppAuthenticatedImpl> get copyWith =>
      __$$AppAuthenticatedImplCopyWithImpl<_$AppAuthenticatedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() splash,
    required TResult Function() onBoardingRequired,
    required TResult Function(User user) authenticated,
    required TResult Function() unAuthenticated,
    required TResult Function() notVerified,
  }) {
    return authenticated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? splash,
    TResult? Function()? onBoardingRequired,
    TResult? Function(User user)? authenticated,
    TResult? Function()? unAuthenticated,
    TResult? Function()? notVerified,
  }) {
    return authenticated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? splash,
    TResult Function()? onBoardingRequired,
    TResult Function(User user)? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function()? notVerified,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppInitial value) initial,
    required TResult Function(AppSplash value) splash,
    required TResult Function(AppOnBoardingRequired value) onBoardingRequired,
    required TResult Function(AppAuthenticated value) authenticated,
    required TResult Function(AppUnauthenticated value) unAuthenticated,
    required TResult Function(AppNotVerified value) notVerified,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppInitial value)? initial,
    TResult? Function(AppSplash value)? splash,
    TResult? Function(AppOnBoardingRequired value)? onBoardingRequired,
    TResult? Function(AppAuthenticated value)? authenticated,
    TResult? Function(AppUnauthenticated value)? unAuthenticated,
    TResult? Function(AppNotVerified value)? notVerified,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppInitial value)? initial,
    TResult Function(AppSplash value)? splash,
    TResult Function(AppOnBoardingRequired value)? onBoardingRequired,
    TResult Function(AppAuthenticated value)? authenticated,
    TResult Function(AppUnauthenticated value)? unAuthenticated,
    TResult Function(AppNotVerified value)? notVerified,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class AppAuthenticated implements AppState {
  const factory AppAuthenticated(final User user) = _$AppAuthenticatedImpl;

  User get user;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppAuthenticatedImplCopyWith<_$AppAuthenticatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppUnauthenticatedImplCopyWith<$Res> {
  factory _$$AppUnauthenticatedImplCopyWith(
    _$AppUnauthenticatedImpl value,
    $Res Function(_$AppUnauthenticatedImpl) then,
  ) = __$$AppUnauthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppUnauthenticatedImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppUnauthenticatedImpl>
    implements _$$AppUnauthenticatedImplCopyWith<$Res> {
  __$$AppUnauthenticatedImplCopyWithImpl(
    _$AppUnauthenticatedImpl _value,
    $Res Function(_$AppUnauthenticatedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AppUnauthenticatedImpl implements AppUnauthenticated {
  const _$AppUnauthenticatedImpl();

  @override
  String toString() {
    return 'AppState.unAuthenticated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppUnauthenticatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() splash,
    required TResult Function() onBoardingRequired,
    required TResult Function(User user) authenticated,
    required TResult Function() unAuthenticated,
    required TResult Function() notVerified,
  }) {
    return unAuthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? splash,
    TResult? Function()? onBoardingRequired,
    TResult? Function(User user)? authenticated,
    TResult? Function()? unAuthenticated,
    TResult? Function()? notVerified,
  }) {
    return unAuthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? splash,
    TResult Function()? onBoardingRequired,
    TResult Function(User user)? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function()? notVerified,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppInitial value) initial,
    required TResult Function(AppSplash value) splash,
    required TResult Function(AppOnBoardingRequired value) onBoardingRequired,
    required TResult Function(AppAuthenticated value) authenticated,
    required TResult Function(AppUnauthenticated value) unAuthenticated,
    required TResult Function(AppNotVerified value) notVerified,
  }) {
    return unAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppInitial value)? initial,
    TResult? Function(AppSplash value)? splash,
    TResult? Function(AppOnBoardingRequired value)? onBoardingRequired,
    TResult? Function(AppAuthenticated value)? authenticated,
    TResult? Function(AppUnauthenticated value)? unAuthenticated,
    TResult? Function(AppNotVerified value)? notVerified,
  }) {
    return unAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppInitial value)? initial,
    TResult Function(AppSplash value)? splash,
    TResult Function(AppOnBoardingRequired value)? onBoardingRequired,
    TResult Function(AppAuthenticated value)? authenticated,
    TResult Function(AppUnauthenticated value)? unAuthenticated,
    TResult Function(AppNotVerified value)? notVerified,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated(this);
    }
    return orElse();
  }
}

abstract class AppUnauthenticated implements AppState {
  const factory AppUnauthenticated() = _$AppUnauthenticatedImpl;
}

/// @nodoc
abstract class _$$AppNotVerifiedImplCopyWith<$Res> {
  factory _$$AppNotVerifiedImplCopyWith(
    _$AppNotVerifiedImpl value,
    $Res Function(_$AppNotVerifiedImpl) then,
  ) = __$$AppNotVerifiedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppNotVerifiedImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppNotVerifiedImpl>
    implements _$$AppNotVerifiedImplCopyWith<$Res> {
  __$$AppNotVerifiedImplCopyWithImpl(
    _$AppNotVerifiedImpl _value,
    $Res Function(_$AppNotVerifiedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AppNotVerifiedImpl implements AppNotVerified {
  const _$AppNotVerifiedImpl();

  @override
  String toString() {
    return 'AppState.notVerified()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppNotVerifiedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() splash,
    required TResult Function() onBoardingRequired,
    required TResult Function(User user) authenticated,
    required TResult Function() unAuthenticated,
    required TResult Function() notVerified,
  }) {
    return notVerified();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? splash,
    TResult? Function()? onBoardingRequired,
    TResult? Function(User user)? authenticated,
    TResult? Function()? unAuthenticated,
    TResult? Function()? notVerified,
  }) {
    return notVerified?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? splash,
    TResult Function()? onBoardingRequired,
    TResult Function(User user)? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function()? notVerified,
    required TResult orElse(),
  }) {
    if (notVerified != null) {
      return notVerified();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppInitial value) initial,
    required TResult Function(AppSplash value) splash,
    required TResult Function(AppOnBoardingRequired value) onBoardingRequired,
    required TResult Function(AppAuthenticated value) authenticated,
    required TResult Function(AppUnauthenticated value) unAuthenticated,
    required TResult Function(AppNotVerified value) notVerified,
  }) {
    return notVerified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppInitial value)? initial,
    TResult? Function(AppSplash value)? splash,
    TResult? Function(AppOnBoardingRequired value)? onBoardingRequired,
    TResult? Function(AppAuthenticated value)? authenticated,
    TResult? Function(AppUnauthenticated value)? unAuthenticated,
    TResult? Function(AppNotVerified value)? notVerified,
  }) {
    return notVerified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppInitial value)? initial,
    TResult Function(AppSplash value)? splash,
    TResult Function(AppOnBoardingRequired value)? onBoardingRequired,
    TResult Function(AppAuthenticated value)? authenticated,
    TResult Function(AppUnauthenticated value)? unAuthenticated,
    TResult Function(AppNotVerified value)? notVerified,
    required TResult orElse(),
  }) {
    if (notVerified != null) {
      return notVerified(this);
    }
    return orElse();
  }
}

abstract class AppNotVerified implements AppState {
  const factory AppNotVerified() = _$AppNotVerifiedImpl;
}

/// @nodoc
mixin _$AppEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() statusCheck,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? statusCheck,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? statusCheck,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStatusChecked value) statusCheck,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppStatusChecked value)? statusCheck,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStatusChecked value)? statusCheck,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res, AppEvent>;
}

/// @nodoc
class _$AppEventCopyWithImpl<$Res, $Val extends AppEvent>
    implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AppStatusCheckedImplCopyWith<$Res> {
  factory _$$AppStatusCheckedImplCopyWith(
    _$AppStatusCheckedImpl value,
    $Res Function(_$AppStatusCheckedImpl) then,
  ) = __$$AppStatusCheckedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppStatusCheckedImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$AppStatusCheckedImpl>
    implements _$$AppStatusCheckedImplCopyWith<$Res> {
  __$$AppStatusCheckedImplCopyWithImpl(
    _$AppStatusCheckedImpl _value,
    $Res Function(_$AppStatusCheckedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AppStatusCheckedImpl implements AppStatusChecked {
  const _$AppStatusCheckedImpl();

  @override
  String toString() {
    return 'AppEvent.statusCheck()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppStatusCheckedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() statusCheck,
  }) {
    return statusCheck();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? statusCheck,
  }) {
    return statusCheck?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? statusCheck,
    required TResult orElse(),
  }) {
    if (statusCheck != null) {
      return statusCheck();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStatusChecked value) statusCheck,
  }) {
    return statusCheck(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppStatusChecked value)? statusCheck,
  }) {
    return statusCheck?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStatusChecked value)? statusCheck,
    required TResult orElse(),
  }) {
    if (statusCheck != null) {
      return statusCheck(this);
    }
    return orElse();
  }
}

abstract class AppStatusChecked implements AppEvent {
  const factory AppStatusChecked() = _$AppStatusCheckedImpl;
}
