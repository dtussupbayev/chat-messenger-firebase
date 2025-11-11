// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reset_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ResetPasswordEvent {

 String get email;
/// Create a copy of ResetPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResetPasswordEventCopyWith<ResetPasswordEvent> get copyWith => _$ResetPasswordEventCopyWithImpl<ResetPasswordEvent>(this as ResetPasswordEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetPasswordEvent&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'ResetPasswordEvent(email: $email)';
}


}

/// @nodoc
abstract mixin class $ResetPasswordEventCopyWith<$Res>  {
  factory $ResetPasswordEventCopyWith(ResetPasswordEvent value, $Res Function(ResetPasswordEvent) _then) = _$ResetPasswordEventCopyWithImpl;
@useResult
$Res call({
 String email
});




}
/// @nodoc
class _$ResetPasswordEventCopyWithImpl<$Res>
    implements $ResetPasswordEventCopyWith<$Res> {
  _$ResetPasswordEventCopyWithImpl(this._self, this._then);

  final ResetPasswordEvent _self;
  final $Res Function(ResetPasswordEvent) _then;

/// Create a copy of ResetPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ResetPasswordEvent].
extension ResetPasswordEventPatterns on ResetPasswordEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ResetPasswordSubmitted value)?  resetPasswordSubmitted,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ResetPasswordSubmitted() when resetPasswordSubmitted != null:
return resetPasswordSubmitted(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ResetPasswordSubmitted value)  resetPasswordSubmitted,}){
final _that = this;
switch (_that) {
case ResetPasswordSubmitted():
return resetPasswordSubmitted(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ResetPasswordSubmitted value)?  resetPasswordSubmitted,}){
final _that = this;
switch (_that) {
case ResetPasswordSubmitted() when resetPasswordSubmitted != null:
return resetPasswordSubmitted(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String email)?  resetPasswordSubmitted,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ResetPasswordSubmitted() when resetPasswordSubmitted != null:
return resetPasswordSubmitted(_that.email);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String email)  resetPasswordSubmitted,}) {final _that = this;
switch (_that) {
case ResetPasswordSubmitted():
return resetPasswordSubmitted(_that.email);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String email)?  resetPasswordSubmitted,}) {final _that = this;
switch (_that) {
case ResetPasswordSubmitted() when resetPasswordSubmitted != null:
return resetPasswordSubmitted(_that.email);case _:
  return null;

}
}

}

/// @nodoc


class ResetPasswordSubmitted implements ResetPasswordEvent {
  const ResetPasswordSubmitted({required this.email});
  

@override final  String email;

/// Create a copy of ResetPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResetPasswordSubmittedCopyWith<ResetPasswordSubmitted> get copyWith => _$ResetPasswordSubmittedCopyWithImpl<ResetPasswordSubmitted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetPasswordSubmitted&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'ResetPasswordEvent.resetPasswordSubmitted(email: $email)';
}


}

/// @nodoc
abstract mixin class $ResetPasswordSubmittedCopyWith<$Res> implements $ResetPasswordEventCopyWith<$Res> {
  factory $ResetPasswordSubmittedCopyWith(ResetPasswordSubmitted value, $Res Function(ResetPasswordSubmitted) _then) = _$ResetPasswordSubmittedCopyWithImpl;
@override @useResult
$Res call({
 String email
});




}
/// @nodoc
class _$ResetPasswordSubmittedCopyWithImpl<$Res>
    implements $ResetPasswordSubmittedCopyWith<$Res> {
  _$ResetPasswordSubmittedCopyWithImpl(this._self, this._then);

  final ResetPasswordSubmitted _self;
  final $Res Function(ResetPasswordSubmitted) _then;

/// Create a copy of ResetPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(ResetPasswordSubmitted(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$ResetPasswordState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetPasswordState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ResetPasswordState()';
}


}

/// @nodoc
class $ResetPasswordStateCopyWith<$Res>  {
$ResetPasswordStateCopyWith(ResetPasswordState _, $Res Function(ResetPasswordState) __);
}


/// Adds pattern-matching-related methods to [ResetPasswordState].
extension ResetPasswordStatePatterns on ResetPasswordState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ResetPasswordInitial value)?  initial,TResult Function( ResetPasswordLoading value)?  loading,TResult Function( ResetPasswordSuccess value)?  success,TResult Function( ResetPasswordFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ResetPasswordInitial() when initial != null:
return initial(_that);case ResetPasswordLoading() when loading != null:
return loading(_that);case ResetPasswordSuccess() when success != null:
return success(_that);case ResetPasswordFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ResetPasswordInitial value)  initial,required TResult Function( ResetPasswordLoading value)  loading,required TResult Function( ResetPasswordSuccess value)  success,required TResult Function( ResetPasswordFailure value)  failure,}){
final _that = this;
switch (_that) {
case ResetPasswordInitial():
return initial(_that);case ResetPasswordLoading():
return loading(_that);case ResetPasswordSuccess():
return success(_that);case ResetPasswordFailure():
return failure(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ResetPasswordInitial value)?  initial,TResult? Function( ResetPasswordLoading value)?  loading,TResult? Function( ResetPasswordSuccess value)?  success,TResult? Function( ResetPasswordFailure value)?  failure,}){
final _that = this;
switch (_that) {
case ResetPasswordInitial() when initial != null:
return initial(_that);case ResetPasswordLoading() when loading != null:
return loading(_that);case ResetPasswordSuccess() when success != null:
return success(_that);case ResetPasswordFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  success,TResult Function( String errorMessage)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ResetPasswordInitial() when initial != null:
return initial();case ResetPasswordLoading() when loading != null:
return loading();case ResetPasswordSuccess() when success != null:
return success();case ResetPasswordFailure() when failure != null:
return failure(_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  success,required TResult Function( String errorMessage)  failure,}) {final _that = this;
switch (_that) {
case ResetPasswordInitial():
return initial();case ResetPasswordLoading():
return loading();case ResetPasswordSuccess():
return success();case ResetPasswordFailure():
return failure(_that.errorMessage);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  success,TResult? Function( String errorMessage)?  failure,}) {final _that = this;
switch (_that) {
case ResetPasswordInitial() when initial != null:
return initial();case ResetPasswordLoading() when loading != null:
return loading();case ResetPasswordSuccess() when success != null:
return success();case ResetPasswordFailure() when failure != null:
return failure(_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class ResetPasswordInitial implements ResetPasswordState {
  const ResetPasswordInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetPasswordInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ResetPasswordState.initial()';
}


}




/// @nodoc


class ResetPasswordLoading implements ResetPasswordState {
  const ResetPasswordLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetPasswordLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ResetPasswordState.loading()';
}


}




/// @nodoc


class ResetPasswordSuccess implements ResetPasswordState {
  const ResetPasswordSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetPasswordSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ResetPasswordState.success()';
}


}




/// @nodoc


class ResetPasswordFailure implements ResetPasswordState {
  const ResetPasswordFailure({required this.errorMessage});
  

 final  String errorMessage;

/// Create a copy of ResetPasswordState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResetPasswordFailureCopyWith<ResetPasswordFailure> get copyWith => _$ResetPasswordFailureCopyWithImpl<ResetPasswordFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetPasswordFailure&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage);

@override
String toString() {
  return 'ResetPasswordState.failure(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $ResetPasswordFailureCopyWith<$Res> implements $ResetPasswordStateCopyWith<$Res> {
  factory $ResetPasswordFailureCopyWith(ResetPasswordFailure value, $Res Function(ResetPasswordFailure) _then) = _$ResetPasswordFailureCopyWithImpl;
@useResult
$Res call({
 String errorMessage
});




}
/// @nodoc
class _$ResetPasswordFailureCopyWithImpl<$Res>
    implements $ResetPasswordFailureCopyWith<$Res> {
  _$ResetPasswordFailureCopyWithImpl(this._self, this._then);

  final ResetPasswordFailure _self;
  final $Res Function(ResetPasswordFailure) _then;

/// Create a copy of ResetPasswordState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,}) {
  return _then(ResetPasswordFailure(
errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
