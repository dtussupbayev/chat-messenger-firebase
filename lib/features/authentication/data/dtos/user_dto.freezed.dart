// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserDto {

 String get uid; String get email; String get firstName; String get lastName; List<String> get searchKeywords;
/// Create a copy of UserDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserDtoCopyWith<UserDto> get copyWith => _$UserDtoCopyWithImpl<UserDto>(this as UserDto, _$identity);

  /// Serializes this UserDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserDto&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.email, email) || other.email == email)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&const DeepCollectionEquality().equals(other.searchKeywords, searchKeywords));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,uid,email,firstName,lastName,const DeepCollectionEquality().hash(searchKeywords));

@override
String toString() {
  return 'UserDto(uid: $uid, email: $email, firstName: $firstName, lastName: $lastName, searchKeywords: $searchKeywords)';
}


}

/// @nodoc
abstract mixin class $UserDtoCopyWith<$Res>  {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) _then) = _$UserDtoCopyWithImpl;
@useResult
$Res call({
 String uid, String email, String firstName, String lastName, List<String> searchKeywords
});




}
/// @nodoc
class _$UserDtoCopyWithImpl<$Res>
    implements $UserDtoCopyWith<$Res> {
  _$UserDtoCopyWithImpl(this._self, this._then);

  final UserDto _self;
  final $Res Function(UserDto) _then;

/// Create a copy of UserDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uid = null,Object? email = null,Object? firstName = null,Object? lastName = null,Object? searchKeywords = null,}) {
  return _then(_self.copyWith(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,searchKeywords: null == searchKeywords ? _self.searchKeywords : searchKeywords // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [UserDto].
extension UserDtoPatterns on UserDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserDto value)  $default,){
final _that = this;
switch (_that) {
case _UserDto():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserDto value)?  $default,){
final _that = this;
switch (_that) {
case _UserDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String uid,  String email,  String firstName,  String lastName,  List<String> searchKeywords)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserDto() when $default != null:
return $default(_that.uid,_that.email,_that.firstName,_that.lastName,_that.searchKeywords);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String uid,  String email,  String firstName,  String lastName,  List<String> searchKeywords)  $default,) {final _that = this;
switch (_that) {
case _UserDto():
return $default(_that.uid,_that.email,_that.firstName,_that.lastName,_that.searchKeywords);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String uid,  String email,  String firstName,  String lastName,  List<String> searchKeywords)?  $default,) {final _that = this;
switch (_that) {
case _UserDto() when $default != null:
return $default(_that.uid,_that.email,_that.firstName,_that.lastName,_that.searchKeywords);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserDto implements UserDto {
  const _UserDto({required this.uid, required this.email, required this.firstName, required this.lastName, required final  List<String> searchKeywords}): _searchKeywords = searchKeywords;
  factory _UserDto.fromJson(Map<String, dynamic> json) => _$UserDtoFromJson(json);

@override final  String uid;
@override final  String email;
@override final  String firstName;
@override final  String lastName;
 final  List<String> _searchKeywords;
@override List<String> get searchKeywords {
  if (_searchKeywords is EqualUnmodifiableListView) return _searchKeywords;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_searchKeywords);
}


/// Create a copy of UserDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserDtoCopyWith<_UserDto> get copyWith => __$UserDtoCopyWithImpl<_UserDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserDto&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.email, email) || other.email == email)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&const DeepCollectionEquality().equals(other._searchKeywords, _searchKeywords));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,uid,email,firstName,lastName,const DeepCollectionEquality().hash(_searchKeywords));

@override
String toString() {
  return 'UserDto(uid: $uid, email: $email, firstName: $firstName, lastName: $lastName, searchKeywords: $searchKeywords)';
}


}

/// @nodoc
abstract mixin class _$UserDtoCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$UserDtoCopyWith(_UserDto value, $Res Function(_UserDto) _then) = __$UserDtoCopyWithImpl;
@override @useResult
$Res call({
 String uid, String email, String firstName, String lastName, List<String> searchKeywords
});




}
/// @nodoc
class __$UserDtoCopyWithImpl<$Res>
    implements _$UserDtoCopyWith<$Res> {
  __$UserDtoCopyWithImpl(this._self, this._then);

  final _UserDto _self;
  final $Res Function(_UserDto) _then;

/// Create a copy of UserDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? email = null,Object? firstName = null,Object? lastName = null,Object? searchKeywords = null,}) {
  return _then(_UserDto(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,searchKeywords: null == searchKeywords ? _self._searchKeywords : searchKeywords // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
