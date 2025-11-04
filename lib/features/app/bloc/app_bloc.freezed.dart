// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppEvent()';
}


}

/// @nodoc
class $AppEventCopyWith<$Res>  {
$AppEventCopyWith(AppEvent _, $Res Function(AppEvent) __);
}


/// Adds pattern-matching-related methods to [AppEvent].
extension AppEventPatterns on AppEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AppStatusChecked value)?  statusCheck,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AppStatusChecked() when statusCheck != null:
return statusCheck(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AppStatusChecked value)  statusCheck,}){
final _that = this;
switch (_that) {
case AppStatusChecked():
return statusCheck(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AppStatusChecked value)?  statusCheck,}){
final _that = this;
switch (_that) {
case AppStatusChecked() when statusCheck != null:
return statusCheck(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  statusCheck,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AppStatusChecked() when statusCheck != null:
return statusCheck();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  statusCheck,}) {final _that = this;
switch (_that) {
case AppStatusChecked():
return statusCheck();case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  statusCheck,}) {final _that = this;
switch (_that) {
case AppStatusChecked() when statusCheck != null:
return statusCheck();case _:
  return null;

}
}

}

/// @nodoc


class AppStatusChecked implements AppEvent {
  const AppStatusChecked();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppStatusChecked);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppEvent.statusCheck()';
}


}




/// @nodoc
mixin _$AppState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppState()';
}


}

/// @nodoc
class $AppStateCopyWith<$Res>  {
$AppStateCopyWith(AppState _, $Res Function(AppState) __);
}


/// Adds pattern-matching-related methods to [AppState].
extension AppStatePatterns on AppState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AppInitial value)?  initial,TResult Function( AppSplash value)?  splash,TResult Function( AppOnBoardingRequired value)?  onBoardingRequired,TResult Function( AppAuthenticated value)?  authenticated,TResult Function( AppUnauthenticated value)?  unAuthenticated,TResult Function( AppNotVerified value)?  notVerified,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AppInitial() when initial != null:
return initial(_that);case AppSplash() when splash != null:
return splash(_that);case AppOnBoardingRequired() when onBoardingRequired != null:
return onBoardingRequired(_that);case AppAuthenticated() when authenticated != null:
return authenticated(_that);case AppUnauthenticated() when unAuthenticated != null:
return unAuthenticated(_that);case AppNotVerified() when notVerified != null:
return notVerified(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AppInitial value)  initial,required TResult Function( AppSplash value)  splash,required TResult Function( AppOnBoardingRequired value)  onBoardingRequired,required TResult Function( AppAuthenticated value)  authenticated,required TResult Function( AppUnauthenticated value)  unAuthenticated,required TResult Function( AppNotVerified value)  notVerified,}){
final _that = this;
switch (_that) {
case AppInitial():
return initial(_that);case AppSplash():
return splash(_that);case AppOnBoardingRequired():
return onBoardingRequired(_that);case AppAuthenticated():
return authenticated(_that);case AppUnauthenticated():
return unAuthenticated(_that);case AppNotVerified():
return notVerified(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AppInitial value)?  initial,TResult? Function( AppSplash value)?  splash,TResult? Function( AppOnBoardingRequired value)?  onBoardingRequired,TResult? Function( AppAuthenticated value)?  authenticated,TResult? Function( AppUnauthenticated value)?  unAuthenticated,TResult? Function( AppNotVerified value)?  notVerified,}){
final _that = this;
switch (_that) {
case AppInitial() when initial != null:
return initial(_that);case AppSplash() when splash != null:
return splash(_that);case AppOnBoardingRequired() when onBoardingRequired != null:
return onBoardingRequired(_that);case AppAuthenticated() when authenticated != null:
return authenticated(_that);case AppUnauthenticated() when unAuthenticated != null:
return unAuthenticated(_that);case AppNotVerified() when notVerified != null:
return notVerified(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  splash,TResult Function()?  onBoardingRequired,TResult Function( User user)?  authenticated,TResult Function()?  unAuthenticated,TResult Function()?  notVerified,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AppInitial() when initial != null:
return initial();case AppSplash() when splash != null:
return splash();case AppOnBoardingRequired() when onBoardingRequired != null:
return onBoardingRequired();case AppAuthenticated() when authenticated != null:
return authenticated(_that.user);case AppUnauthenticated() when unAuthenticated != null:
return unAuthenticated();case AppNotVerified() when notVerified != null:
return notVerified();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  splash,required TResult Function()  onBoardingRequired,required TResult Function( User user)  authenticated,required TResult Function()  unAuthenticated,required TResult Function()  notVerified,}) {final _that = this;
switch (_that) {
case AppInitial():
return initial();case AppSplash():
return splash();case AppOnBoardingRequired():
return onBoardingRequired();case AppAuthenticated():
return authenticated(_that.user);case AppUnauthenticated():
return unAuthenticated();case AppNotVerified():
return notVerified();case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  splash,TResult? Function()?  onBoardingRequired,TResult? Function( User user)?  authenticated,TResult? Function()?  unAuthenticated,TResult? Function()?  notVerified,}) {final _that = this;
switch (_that) {
case AppInitial() when initial != null:
return initial();case AppSplash() when splash != null:
return splash();case AppOnBoardingRequired() when onBoardingRequired != null:
return onBoardingRequired();case AppAuthenticated() when authenticated != null:
return authenticated(_that.user);case AppUnauthenticated() when unAuthenticated != null:
return unAuthenticated();case AppNotVerified() when notVerified != null:
return notVerified();case _:
  return null;

}
}

}

/// @nodoc


class AppInitial implements AppState {
  const AppInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppState.initial()';
}


}




/// @nodoc


class AppSplash implements AppState {
  const AppSplash();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppSplash);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppState.splash()';
}


}




/// @nodoc


class AppOnBoardingRequired implements AppState {
  const AppOnBoardingRequired();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppOnBoardingRequired);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppState.onBoardingRequired()';
}


}




/// @nodoc


class AppAuthenticated implements AppState {
  const AppAuthenticated(this.user);
  

 final  User user;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppAuthenticatedCopyWith<AppAuthenticated> get copyWith => _$AppAuthenticatedCopyWithImpl<AppAuthenticated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppAuthenticated&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'AppState.authenticated(user: $user)';
}


}

/// @nodoc
abstract mixin class $AppAuthenticatedCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory $AppAuthenticatedCopyWith(AppAuthenticated value, $Res Function(AppAuthenticated) _then) = _$AppAuthenticatedCopyWithImpl;
@useResult
$Res call({
 User user
});




}
/// @nodoc
class _$AppAuthenticatedCopyWithImpl<$Res>
    implements $AppAuthenticatedCopyWith<$Res> {
  _$AppAuthenticatedCopyWithImpl(this._self, this._then);

  final AppAuthenticated _self;
  final $Res Function(AppAuthenticated) _then;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(AppAuthenticated(
null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,
  ));
}


}

/// @nodoc


class AppUnauthenticated implements AppState {
  const AppUnauthenticated();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppUnauthenticated);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppState.unAuthenticated()';
}


}




/// @nodoc


class AppNotVerified implements AppState {
  const AppNotVerified();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppNotVerified);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppState.notVerified()';
}


}




// dart format on
