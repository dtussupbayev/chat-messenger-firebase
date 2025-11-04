// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'locale_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LocaleEvent implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'LocaleEvent'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocaleEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'LocaleEvent()';
}


}

/// @nodoc
class $LocaleEventCopyWith<$Res>  {
$LocaleEventCopyWith(LocaleEvent _, $Res Function(LocaleEvent) __);
}


/// Adds pattern-matching-related methods to [LocaleEvent].
extension LocaleEventPatterns on LocaleEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( UpdateLocale value)?  updateLocale,TResult Function( ClearState value)?  clearState,required TResult orElse(),}){
final _that = this;
switch (_that) {
case UpdateLocale() when updateLocale != null:
return updateLocale(_that);case ClearState() when clearState != null:
return clearState(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( UpdateLocale value)  updateLocale,required TResult Function( ClearState value)  clearState,}){
final _that = this;
switch (_that) {
case UpdateLocale():
return updateLocale(_that);case ClearState():
return clearState(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( UpdateLocale value)?  updateLocale,TResult? Function( ClearState value)?  clearState,}){
final _that = this;
switch (_that) {
case UpdateLocale() when updateLocale != null:
return updateLocale(_that);case ClearState() when clearState != null:
return clearState(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( Locale? locale)?  updateLocale,TResult Function()?  clearState,required TResult orElse(),}) {final _that = this;
switch (_that) {
case UpdateLocale() when updateLocale != null:
return updateLocale(_that.locale);case ClearState() when clearState != null:
return clearState();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( Locale? locale)  updateLocale,required TResult Function()  clearState,}) {final _that = this;
switch (_that) {
case UpdateLocale():
return updateLocale(_that.locale);case ClearState():
return clearState();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( Locale? locale)?  updateLocale,TResult? Function()?  clearState,}) {final _that = this;
switch (_that) {
case UpdateLocale() when updateLocale != null:
return updateLocale(_that.locale);case ClearState() when clearState != null:
return clearState();case _:
  return null;

}
}

}

/// @nodoc


class UpdateLocale with DiagnosticableTreeMixin implements LocaleEvent {
  const UpdateLocale(this.locale);
  

 final  Locale? locale;

/// Create a copy of LocaleEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateLocaleCopyWith<UpdateLocale> get copyWith => _$UpdateLocaleCopyWithImpl<UpdateLocale>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'LocaleEvent.updateLocale'))
    ..add(DiagnosticsProperty('locale', locale));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateLocale&&(identical(other.locale, locale) || other.locale == locale));
}


@override
int get hashCode => Object.hash(runtimeType,locale);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'LocaleEvent.updateLocale(locale: $locale)';
}


}

/// @nodoc
abstract mixin class $UpdateLocaleCopyWith<$Res> implements $LocaleEventCopyWith<$Res> {
  factory $UpdateLocaleCopyWith(UpdateLocale value, $Res Function(UpdateLocale) _then) = _$UpdateLocaleCopyWithImpl;
@useResult
$Res call({
 Locale? locale
});




}
/// @nodoc
class _$UpdateLocaleCopyWithImpl<$Res>
    implements $UpdateLocaleCopyWith<$Res> {
  _$UpdateLocaleCopyWithImpl(this._self, this._then);

  final UpdateLocale _self;
  final $Res Function(UpdateLocale) _then;

/// Create a copy of LocaleEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? locale = freezed,}) {
  return _then(UpdateLocale(
freezed == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as Locale?,
  ));
}


}

/// @nodoc


class ClearState with DiagnosticableTreeMixin implements LocaleEvent {
  const ClearState();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'LocaleEvent.clearState'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClearState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'LocaleEvent.clearState()';
}


}





/// @nodoc
mixin _$LocaleState implements DiagnosticableTreeMixin {

@LocaleConverter() Locale get locale;
/// Create a copy of LocaleState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocaleStateCopyWith<LocaleState> get copyWith => _$LocaleStateCopyWithImpl<LocaleState>(this as LocaleState, _$identity);

  /// Serializes this LocaleState to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'LocaleState'))
    ..add(DiagnosticsProperty('locale', locale));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocaleState&&(identical(other.locale, locale) || other.locale == locale));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,locale);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'LocaleState(locale: $locale)';
}


}

/// @nodoc
abstract mixin class $LocaleStateCopyWith<$Res>  {
  factory $LocaleStateCopyWith(LocaleState value, $Res Function(LocaleState) _then) = _$LocaleStateCopyWithImpl;
@useResult
$Res call({
@LocaleConverter() Locale locale
});




}
/// @nodoc
class _$LocaleStateCopyWithImpl<$Res>
    implements $LocaleStateCopyWith<$Res> {
  _$LocaleStateCopyWithImpl(this._self, this._then);

  final LocaleState _self;
  final $Res Function(LocaleState) _then;

/// Create a copy of LocaleState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? locale = null,}) {
  return _then(_self.copyWith(
locale: null == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as Locale,
  ));
}

}


/// Adds pattern-matching-related methods to [LocaleState].
extension LocaleStatePatterns on LocaleState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LocaleState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LocaleState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LocaleState value)  $default,){
final _that = this;
switch (_that) {
case _LocaleState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LocaleState value)?  $default,){
final _that = this;
switch (_that) {
case _LocaleState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@LocaleConverter()  Locale locale)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LocaleState() when $default != null:
return $default(_that.locale);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@LocaleConverter()  Locale locale)  $default,) {final _that = this;
switch (_that) {
case _LocaleState():
return $default(_that.locale);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@LocaleConverter()  Locale locale)?  $default,) {final _that = this;
switch (_that) {
case _LocaleState() when $default != null:
return $default(_that.locale);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LocaleState with DiagnosticableTreeMixin implements LocaleState {
  const _LocaleState({@LocaleConverter() required this.locale});
  factory _LocaleState.fromJson(Map<String, dynamic> json) => _$LocaleStateFromJson(json);

@override@LocaleConverter() final  Locale locale;

/// Create a copy of LocaleState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocaleStateCopyWith<_LocaleState> get copyWith => __$LocaleStateCopyWithImpl<_LocaleState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LocaleStateToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'LocaleState'))
    ..add(DiagnosticsProperty('locale', locale));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocaleState&&(identical(other.locale, locale) || other.locale == locale));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,locale);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'LocaleState(locale: $locale)';
}


}

/// @nodoc
abstract mixin class _$LocaleStateCopyWith<$Res> implements $LocaleStateCopyWith<$Res> {
  factory _$LocaleStateCopyWith(_LocaleState value, $Res Function(_LocaleState) _then) = __$LocaleStateCopyWithImpl;
@override @useResult
$Res call({
@LocaleConverter() Locale locale
});




}
/// @nodoc
class __$LocaleStateCopyWithImpl<$Res>
    implements _$LocaleStateCopyWith<$Res> {
  __$LocaleStateCopyWithImpl(this._self, this._then);

  final _LocaleState _self;
  final $Res Function(_LocaleState) _then;

/// Create a copy of LocaleState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? locale = null,}) {
  return _then(_LocaleState(
locale: null == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as Locale,
  ));
}


}

// dart format on
