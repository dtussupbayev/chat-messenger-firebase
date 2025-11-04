// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_email_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$VerifyEmailEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyEmailEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VerifyEmailEvent()';
}


}

/// @nodoc
class $VerifyEmailEventCopyWith<$Res>  {
$VerifyEmailEventCopyWith(VerifyEmailEvent _, $Res Function(VerifyEmailEvent) __);
}


/// Adds pattern-matching-related methods to [VerifyEmailEvent].
extension VerifyEmailEventPatterns on VerifyEmailEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SendVerificationEmail value)?  sendVerificationEmail,TResult Function( CheckEmailVerified value)?  checkEmailVerified,TResult Function( CancelVerification value)?  cancelVerification,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SendVerificationEmail() when sendVerificationEmail != null:
return sendVerificationEmail(_that);case CheckEmailVerified() when checkEmailVerified != null:
return checkEmailVerified(_that);case CancelVerification() when cancelVerification != null:
return cancelVerification(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SendVerificationEmail value)  sendVerificationEmail,required TResult Function( CheckEmailVerified value)  checkEmailVerified,required TResult Function( CancelVerification value)  cancelVerification,}){
final _that = this;
switch (_that) {
case SendVerificationEmail():
return sendVerificationEmail(_that);case CheckEmailVerified():
return checkEmailVerified(_that);case CancelVerification():
return cancelVerification(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SendVerificationEmail value)?  sendVerificationEmail,TResult? Function( CheckEmailVerified value)?  checkEmailVerified,TResult? Function( CancelVerification value)?  cancelVerification,}){
final _that = this;
switch (_that) {
case SendVerificationEmail() when sendVerificationEmail != null:
return sendVerificationEmail(_that);case CheckEmailVerified() when checkEmailVerified != null:
return checkEmailVerified(_that);case CancelVerification() when cancelVerification != null:
return cancelVerification(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  sendVerificationEmail,TResult Function()?  checkEmailVerified,TResult Function()?  cancelVerification,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SendVerificationEmail() when sendVerificationEmail != null:
return sendVerificationEmail();case CheckEmailVerified() when checkEmailVerified != null:
return checkEmailVerified();case CancelVerification() when cancelVerification != null:
return cancelVerification();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  sendVerificationEmail,required TResult Function()  checkEmailVerified,required TResult Function()  cancelVerification,}) {final _that = this;
switch (_that) {
case SendVerificationEmail():
return sendVerificationEmail();case CheckEmailVerified():
return checkEmailVerified();case CancelVerification():
return cancelVerification();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  sendVerificationEmail,TResult? Function()?  checkEmailVerified,TResult? Function()?  cancelVerification,}) {final _that = this;
switch (_that) {
case SendVerificationEmail() when sendVerificationEmail != null:
return sendVerificationEmail();case CheckEmailVerified() when checkEmailVerified != null:
return checkEmailVerified();case CancelVerification() when cancelVerification != null:
return cancelVerification();case _:
  return null;

}
}

}

/// @nodoc


class SendVerificationEmail implements VerifyEmailEvent {
  const SendVerificationEmail();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendVerificationEmail);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VerifyEmailEvent.sendVerificationEmail()';
}


}




/// @nodoc


class CheckEmailVerified implements VerifyEmailEvent {
  const CheckEmailVerified();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckEmailVerified);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VerifyEmailEvent.checkEmailVerified()';
}


}




/// @nodoc


class CancelVerification implements VerifyEmailEvent {
  const CancelVerification();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CancelVerification);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VerifyEmailEvent.cancelVerification()';
}


}




/// @nodoc
mixin _$VerifyEmailState {

 VerifyEmailStatus get status; bool get canResendEmail; String? get errorMessage;
/// Create a copy of VerifyEmailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifyEmailStateCopyWith<VerifyEmailState> get copyWith => _$VerifyEmailStateCopyWithImpl<VerifyEmailState>(this as VerifyEmailState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyEmailState&&(identical(other.status, status) || other.status == status)&&(identical(other.canResendEmail, canResendEmail) || other.canResendEmail == canResendEmail)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,canResendEmail,errorMessage);

@override
String toString() {
  return 'VerifyEmailState(status: $status, canResendEmail: $canResendEmail, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $VerifyEmailStateCopyWith<$Res>  {
  factory $VerifyEmailStateCopyWith(VerifyEmailState value, $Res Function(VerifyEmailState) _then) = _$VerifyEmailStateCopyWithImpl;
@useResult
$Res call({
 VerifyEmailStatus status, bool canResendEmail, String? errorMessage
});




}
/// @nodoc
class _$VerifyEmailStateCopyWithImpl<$Res>
    implements $VerifyEmailStateCopyWith<$Res> {
  _$VerifyEmailStateCopyWithImpl(this._self, this._then);

  final VerifyEmailState _self;
  final $Res Function(VerifyEmailState) _then;

/// Create a copy of VerifyEmailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? canResendEmail = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as VerifyEmailStatus,canResendEmail: null == canResendEmail ? _self.canResendEmail : canResendEmail // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [VerifyEmailState].
extension VerifyEmailStatePatterns on VerifyEmailState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VerifyEmailState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VerifyEmailState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VerifyEmailState value)  $default,){
final _that = this;
switch (_that) {
case _VerifyEmailState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VerifyEmailState value)?  $default,){
final _that = this;
switch (_that) {
case _VerifyEmailState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( VerifyEmailStatus status,  bool canResendEmail,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VerifyEmailState() when $default != null:
return $default(_that.status,_that.canResendEmail,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( VerifyEmailStatus status,  bool canResendEmail,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _VerifyEmailState():
return $default(_that.status,_that.canResendEmail,_that.errorMessage);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( VerifyEmailStatus status,  bool canResendEmail,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _VerifyEmailState() when $default != null:
return $default(_that.status,_that.canResendEmail,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _VerifyEmailState implements VerifyEmailState {
  const _VerifyEmailState({this.status = VerifyEmailStatus.initial, this.canResendEmail = false, this.errorMessage});
  

@override@JsonKey() final  VerifyEmailStatus status;
@override@JsonKey() final  bool canResendEmail;
@override final  String? errorMessage;

/// Create a copy of VerifyEmailState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerifyEmailStateCopyWith<_VerifyEmailState> get copyWith => __$VerifyEmailStateCopyWithImpl<_VerifyEmailState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerifyEmailState&&(identical(other.status, status) || other.status == status)&&(identical(other.canResendEmail, canResendEmail) || other.canResendEmail == canResendEmail)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,canResendEmail,errorMessage);

@override
String toString() {
  return 'VerifyEmailState(status: $status, canResendEmail: $canResendEmail, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$VerifyEmailStateCopyWith<$Res> implements $VerifyEmailStateCopyWith<$Res> {
  factory _$VerifyEmailStateCopyWith(_VerifyEmailState value, $Res Function(_VerifyEmailState) _then) = __$VerifyEmailStateCopyWithImpl;
@override @useResult
$Res call({
 VerifyEmailStatus status, bool canResendEmail, String? errorMessage
});




}
/// @nodoc
class __$VerifyEmailStateCopyWithImpl<$Res>
    implements _$VerifyEmailStateCopyWith<$Res> {
  __$VerifyEmailStateCopyWithImpl(this._self, this._then);

  final _VerifyEmailState _self;
  final $Res Function(_VerifyEmailState) _then;

/// Create a copy of VerifyEmailState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? canResendEmail = null,Object? errorMessage = freezed,}) {
  return _then(_VerifyEmailState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as VerifyEmailStatus,canResendEmail: null == canResendEmail ? _self.canResendEmail : canResendEmail // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
