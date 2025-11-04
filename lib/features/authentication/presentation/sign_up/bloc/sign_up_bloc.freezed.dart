// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignUpEvent implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SignUpEvent'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SignUpEvent()';
}


}

/// @nodoc
class $SignUpEventCopyWith<$Res>  {
$SignUpEventCopyWith(SignUpEvent _, $Res Function(SignUpEvent) __);
}


/// Adds pattern-matching-related methods to [SignUpEvent].
extension SignUpEventPatterns on SignUpEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SignUpSubmitted value)?  signUpSubmitted,TResult Function( TogglePasswordVisibility value)?  togglePasswordVisibility,TResult Function( ToggleRepeatPasswordVisibility value)?  toggleRepeatPasswordVisibility,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SignUpSubmitted() when signUpSubmitted != null:
return signUpSubmitted(_that);case TogglePasswordVisibility() when togglePasswordVisibility != null:
return togglePasswordVisibility(_that);case ToggleRepeatPasswordVisibility() when toggleRepeatPasswordVisibility != null:
return toggleRepeatPasswordVisibility(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SignUpSubmitted value)  signUpSubmitted,required TResult Function( TogglePasswordVisibility value)  togglePasswordVisibility,required TResult Function( ToggleRepeatPasswordVisibility value)  toggleRepeatPasswordVisibility,}){
final _that = this;
switch (_that) {
case SignUpSubmitted():
return signUpSubmitted(_that);case TogglePasswordVisibility():
return togglePasswordVisibility(_that);case ToggleRepeatPasswordVisibility():
return toggleRepeatPasswordVisibility(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SignUpSubmitted value)?  signUpSubmitted,TResult? Function( TogglePasswordVisibility value)?  togglePasswordVisibility,TResult? Function( ToggleRepeatPasswordVisibility value)?  toggleRepeatPasswordVisibility,}){
final _that = this;
switch (_that) {
case SignUpSubmitted() when signUpSubmitted != null:
return signUpSubmitted(_that);case TogglePasswordVisibility() when togglePasswordVisibility != null:
return togglePasswordVisibility(_that);case ToggleRepeatPasswordVisibility() when toggleRepeatPasswordVisibility != null:
return toggleRepeatPasswordVisibility(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String email,  String password,  String firstName,  String lastName)?  signUpSubmitted,TResult Function()?  togglePasswordVisibility,TResult Function()?  toggleRepeatPasswordVisibility,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SignUpSubmitted() when signUpSubmitted != null:
return signUpSubmitted(_that.email,_that.password,_that.firstName,_that.lastName);case TogglePasswordVisibility() when togglePasswordVisibility != null:
return togglePasswordVisibility();case ToggleRepeatPasswordVisibility() when toggleRepeatPasswordVisibility != null:
return toggleRepeatPasswordVisibility();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String email,  String password,  String firstName,  String lastName)  signUpSubmitted,required TResult Function()  togglePasswordVisibility,required TResult Function()  toggleRepeatPasswordVisibility,}) {final _that = this;
switch (_that) {
case SignUpSubmitted():
return signUpSubmitted(_that.email,_that.password,_that.firstName,_that.lastName);case TogglePasswordVisibility():
return togglePasswordVisibility();case ToggleRepeatPasswordVisibility():
return toggleRepeatPasswordVisibility();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String email,  String password,  String firstName,  String lastName)?  signUpSubmitted,TResult? Function()?  togglePasswordVisibility,TResult? Function()?  toggleRepeatPasswordVisibility,}) {final _that = this;
switch (_that) {
case SignUpSubmitted() when signUpSubmitted != null:
return signUpSubmitted(_that.email,_that.password,_that.firstName,_that.lastName);case TogglePasswordVisibility() when togglePasswordVisibility != null:
return togglePasswordVisibility();case ToggleRepeatPasswordVisibility() when toggleRepeatPasswordVisibility != null:
return toggleRepeatPasswordVisibility();case _:
  return null;

}
}

}

/// @nodoc


class SignUpSubmitted with DiagnosticableTreeMixin implements SignUpEvent {
  const SignUpSubmitted({required this.email, required this.password, required this.firstName, required this.lastName});
  

 final  String email;
 final  String password;
 final  String firstName;
 final  String lastName;

/// Create a copy of SignUpEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpSubmittedCopyWith<SignUpSubmitted> get copyWith => _$SignUpSubmittedCopyWithImpl<SignUpSubmitted>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SignUpEvent.signUpSubmitted'))
    ..add(DiagnosticsProperty('email', email))..add(DiagnosticsProperty('password', password))..add(DiagnosticsProperty('firstName', firstName))..add(DiagnosticsProperty('lastName', lastName));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpSubmitted&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName));
}


@override
int get hashCode => Object.hash(runtimeType,email,password,firstName,lastName);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SignUpEvent.signUpSubmitted(email: $email, password: $password, firstName: $firstName, lastName: $lastName)';
}


}

/// @nodoc
abstract mixin class $SignUpSubmittedCopyWith<$Res> implements $SignUpEventCopyWith<$Res> {
  factory $SignUpSubmittedCopyWith(SignUpSubmitted value, $Res Function(SignUpSubmitted) _then) = _$SignUpSubmittedCopyWithImpl;
@useResult
$Res call({
 String email, String password, String firstName, String lastName
});




}
/// @nodoc
class _$SignUpSubmittedCopyWithImpl<$Res>
    implements $SignUpSubmittedCopyWith<$Res> {
  _$SignUpSubmittedCopyWithImpl(this._self, this._then);

  final SignUpSubmitted _self;
  final $Res Function(SignUpSubmitted) _then;

/// Create a copy of SignUpEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,Object? firstName = null,Object? lastName = null,}) {
  return _then(SignUpSubmitted(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class TogglePasswordVisibility with DiagnosticableTreeMixin implements SignUpEvent {
  const TogglePasswordVisibility();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SignUpEvent.togglePasswordVisibility'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TogglePasswordVisibility);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SignUpEvent.togglePasswordVisibility()';
}


}




/// @nodoc


class ToggleRepeatPasswordVisibility with DiagnosticableTreeMixin implements SignUpEvent {
  const ToggleRepeatPasswordVisibility();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SignUpEvent.toggleRepeatPasswordVisibility'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ToggleRepeatPasswordVisibility);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SignUpEvent.toggleRepeatPasswordVisibility()';
}


}




/// @nodoc
mixin _$SignUpState implements DiagnosticableTreeMixin {

 SignUpStatus get status; bool get isPasswordHidden; bool get isRepeatPasswordHidden; String? get errorMessage;
/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpStateCopyWith<SignUpState> get copyWith => _$SignUpStateCopyWithImpl<SignUpState>(this as SignUpState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SignUpState'))
    ..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('isPasswordHidden', isPasswordHidden))..add(DiagnosticsProperty('isRepeatPasswordHidden', isRepeatPasswordHidden))..add(DiagnosticsProperty('errorMessage', errorMessage));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpState&&(identical(other.status, status) || other.status == status)&&(identical(other.isPasswordHidden, isPasswordHidden) || other.isPasswordHidden == isPasswordHidden)&&(identical(other.isRepeatPasswordHidden, isRepeatPasswordHidden) || other.isRepeatPasswordHidden == isRepeatPasswordHidden)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,isPasswordHidden,isRepeatPasswordHidden,errorMessage);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SignUpState(status: $status, isPasswordHidden: $isPasswordHidden, isRepeatPasswordHidden: $isRepeatPasswordHidden, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $SignUpStateCopyWith<$Res>  {
  factory $SignUpStateCopyWith(SignUpState value, $Res Function(SignUpState) _then) = _$SignUpStateCopyWithImpl;
@useResult
$Res call({
 SignUpStatus status, bool isPasswordHidden, bool isRepeatPasswordHidden, String? errorMessage
});




}
/// @nodoc
class _$SignUpStateCopyWithImpl<$Res>
    implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._self, this._then);

  final SignUpState _self;
  final $Res Function(SignUpState) _then;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? isPasswordHidden = null,Object? isRepeatPasswordHidden = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SignUpStatus,isPasswordHidden: null == isPasswordHidden ? _self.isPasswordHidden : isPasswordHidden // ignore: cast_nullable_to_non_nullable
as bool,isRepeatPasswordHidden: null == isRepeatPasswordHidden ? _self.isRepeatPasswordHidden : isRepeatPasswordHidden // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SignUpState].
extension SignUpStatePatterns on SignUpState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignUpState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignUpState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignUpState value)  $default,){
final _that = this;
switch (_that) {
case _SignUpState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignUpState value)?  $default,){
final _that = this;
switch (_that) {
case _SignUpState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SignUpStatus status,  bool isPasswordHidden,  bool isRepeatPasswordHidden,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignUpState() when $default != null:
return $default(_that.status,_that.isPasswordHidden,_that.isRepeatPasswordHidden,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SignUpStatus status,  bool isPasswordHidden,  bool isRepeatPasswordHidden,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _SignUpState():
return $default(_that.status,_that.isPasswordHidden,_that.isRepeatPasswordHidden,_that.errorMessage);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SignUpStatus status,  bool isPasswordHidden,  bool isRepeatPasswordHidden,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _SignUpState() when $default != null:
return $default(_that.status,_that.isPasswordHidden,_that.isRepeatPasswordHidden,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _SignUpState with DiagnosticableTreeMixin implements SignUpState {
  const _SignUpState({this.status = SignUpStatus.initial, this.isPasswordHidden = true, this.isRepeatPasswordHidden = true, this.errorMessage});
  

@override@JsonKey() final  SignUpStatus status;
@override@JsonKey() final  bool isPasswordHidden;
@override@JsonKey() final  bool isRepeatPasswordHidden;
@override final  String? errorMessage;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignUpStateCopyWith<_SignUpState> get copyWith => __$SignUpStateCopyWithImpl<_SignUpState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SignUpState'))
    ..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('isPasswordHidden', isPasswordHidden))..add(DiagnosticsProperty('isRepeatPasswordHidden', isRepeatPasswordHidden))..add(DiagnosticsProperty('errorMessage', errorMessage));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignUpState&&(identical(other.status, status) || other.status == status)&&(identical(other.isPasswordHidden, isPasswordHidden) || other.isPasswordHidden == isPasswordHidden)&&(identical(other.isRepeatPasswordHidden, isRepeatPasswordHidden) || other.isRepeatPasswordHidden == isRepeatPasswordHidden)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,isPasswordHidden,isRepeatPasswordHidden,errorMessage);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SignUpState(status: $status, isPasswordHidden: $isPasswordHidden, isRepeatPasswordHidden: $isRepeatPasswordHidden, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$SignUpStateCopyWith<$Res> implements $SignUpStateCopyWith<$Res> {
  factory _$SignUpStateCopyWith(_SignUpState value, $Res Function(_SignUpState) _then) = __$SignUpStateCopyWithImpl;
@override @useResult
$Res call({
 SignUpStatus status, bool isPasswordHidden, bool isRepeatPasswordHidden, String? errorMessage
});




}
/// @nodoc
class __$SignUpStateCopyWithImpl<$Res>
    implements _$SignUpStateCopyWith<$Res> {
  __$SignUpStateCopyWithImpl(this._self, this._then);

  final _SignUpState _self;
  final $Res Function(_SignUpState) _then;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? isPasswordHidden = null,Object? isRepeatPasswordHidden = null,Object? errorMessage = freezed,}) {
  return _then(_SignUpState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SignUpStatus,isPasswordHidden: null == isPasswordHidden ? _self.isPasswordHidden : isPasswordHidden // ignore: cast_nullable_to_non_nullable
as bool,isRepeatPasswordHidden: null == isRepeatPasswordHidden ? _self.isRepeatPasswordHidden : isRepeatPasswordHidden // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
