// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CountryResponseModel {

 bool? get success; String? get message; List<CountryModel?>? get data;
/// Create a copy of CountryResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CountryResponseModelCopyWith<CountryResponseModel> get copyWith => _$CountryResponseModelCopyWithImpl<CountryResponseModel>(this as CountryResponseModel, _$identity);

  /// Serializes this CountryResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CountryResponseModel&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'CountryResponseModel(success: $success, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $CountryResponseModelCopyWith<$Res>  {
  factory $CountryResponseModelCopyWith(CountryResponseModel value, $Res Function(CountryResponseModel) _then) = _$CountryResponseModelCopyWithImpl;
@useResult
$Res call({
 bool? success, String? message, List<CountryModel?>? data
});




}
/// @nodoc
class _$CountryResponseModelCopyWithImpl<$Res>
    implements $CountryResponseModelCopyWith<$Res> {
  _$CountryResponseModelCopyWithImpl(this._self, this._then);

  final CountryResponseModel _self;
  final $Res Function(CountryResponseModel) _then;

/// Create a copy of CountryResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = freezed,Object? message = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<CountryModel?>?,
  ));
}

}


/// Adds pattern-matching-related methods to [CountryResponseModel].
extension CountryResponseModelPatterns on CountryResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CountryResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CountryResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CountryResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _CountryResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CountryResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _CountryResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? success,  String? message,  List<CountryModel?>? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CountryResponseModel() when $default != null:
return $default(_that.success,_that.message,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? success,  String? message,  List<CountryModel?>? data)  $default,) {final _that = this;
switch (_that) {
case _CountryResponseModel():
return $default(_that.success,_that.message,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? success,  String? message,  List<CountryModel?>? data)?  $default,) {final _that = this;
switch (_that) {
case _CountryResponseModel() when $default != null:
return $default(_that.success,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CountryResponseModel implements CountryResponseModel {
  const _CountryResponseModel({this.success, this.message, final  List<CountryModel?>? data}): _data = data;
  factory _CountryResponseModel.fromJson(Map<String, dynamic> json) => _$CountryResponseModelFromJson(json);

@override final  bool? success;
@override final  String? message;
 final  List<CountryModel?>? _data;
@override List<CountryModel?>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of CountryResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CountryResponseModelCopyWith<_CountryResponseModel> get copyWith => __$CountryResponseModelCopyWithImpl<_CountryResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CountryResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CountryResponseModel&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'CountryResponseModel(success: $success, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$CountryResponseModelCopyWith<$Res> implements $CountryResponseModelCopyWith<$Res> {
  factory _$CountryResponseModelCopyWith(_CountryResponseModel value, $Res Function(_CountryResponseModel) _then) = __$CountryResponseModelCopyWithImpl;
@override @useResult
$Res call({
 bool? success, String? message, List<CountryModel?>? data
});




}
/// @nodoc
class __$CountryResponseModelCopyWithImpl<$Res>
    implements _$CountryResponseModelCopyWith<$Res> {
  __$CountryResponseModelCopyWithImpl(this._self, this._then);

  final _CountryResponseModel _self;
  final $Res Function(_CountryResponseModel) _then;

/// Create a copy of CountryResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = freezed,Object? message = freezed,Object? data = freezed,}) {
  return _then(_CountryResponseModel(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<CountryModel?>?,
  ));
}


}


/// @nodoc
mixin _$CountryModel {

 int? get countryId; String? get countryKey; String? get countryName; String? get iso; String? get flag;
/// Create a copy of CountryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CountryModelCopyWith<CountryModel> get copyWith => _$CountryModelCopyWithImpl<CountryModel>(this as CountryModel, _$identity);

  /// Serializes this CountryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CountryModel&&(identical(other.countryId, countryId) || other.countryId == countryId)&&(identical(other.countryKey, countryKey) || other.countryKey == countryKey)&&(identical(other.countryName, countryName) || other.countryName == countryName)&&(identical(other.iso, iso) || other.iso == iso)&&(identical(other.flag, flag) || other.flag == flag));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,countryId,countryKey,countryName,iso,flag);

@override
String toString() {
  return 'CountryModel(countryId: $countryId, countryKey: $countryKey, countryName: $countryName, iso: $iso, flag: $flag)';
}


}

/// @nodoc
abstract mixin class $CountryModelCopyWith<$Res>  {
  factory $CountryModelCopyWith(CountryModel value, $Res Function(CountryModel) _then) = _$CountryModelCopyWithImpl;
@useResult
$Res call({
 int? countryId, String? countryKey, String? countryName, String? iso, String? flag
});




}
/// @nodoc
class _$CountryModelCopyWithImpl<$Res>
    implements $CountryModelCopyWith<$Res> {
  _$CountryModelCopyWithImpl(this._self, this._then);

  final CountryModel _self;
  final $Res Function(CountryModel) _then;

/// Create a copy of CountryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? countryId = freezed,Object? countryKey = freezed,Object? countryName = freezed,Object? iso = freezed,Object? flag = freezed,}) {
  return _then(_self.copyWith(
countryId: freezed == countryId ? _self.countryId : countryId // ignore: cast_nullable_to_non_nullable
as int?,countryKey: freezed == countryKey ? _self.countryKey : countryKey // ignore: cast_nullable_to_non_nullable
as String?,countryName: freezed == countryName ? _self.countryName : countryName // ignore: cast_nullable_to_non_nullable
as String?,iso: freezed == iso ? _self.iso : iso // ignore: cast_nullable_to_non_nullable
as String?,flag: freezed == flag ? _self.flag : flag // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CountryModel].
extension CountryModelPatterns on CountryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CountryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CountryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CountryModel value)  $default,){
final _that = this;
switch (_that) {
case _CountryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CountryModel value)?  $default,){
final _that = this;
switch (_that) {
case _CountryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? countryId,  String? countryKey,  String? countryName,  String? iso,  String? flag)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CountryModel() when $default != null:
return $default(_that.countryId,_that.countryKey,_that.countryName,_that.iso,_that.flag);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? countryId,  String? countryKey,  String? countryName,  String? iso,  String? flag)  $default,) {final _that = this;
switch (_that) {
case _CountryModel():
return $default(_that.countryId,_that.countryKey,_that.countryName,_that.iso,_that.flag);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? countryId,  String? countryKey,  String? countryName,  String? iso,  String? flag)?  $default,) {final _that = this;
switch (_that) {
case _CountryModel() when $default != null:
return $default(_that.countryId,_that.countryKey,_that.countryName,_that.iso,_that.flag);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CountryModel implements CountryModel {
  const _CountryModel({this.countryId, this.countryKey, this.countryName, this.iso, this.flag});
  factory _CountryModel.fromJson(Map<String, dynamic> json) => _$CountryModelFromJson(json);

@override final  int? countryId;
@override final  String? countryKey;
@override final  String? countryName;
@override final  String? iso;
@override final  String? flag;

/// Create a copy of CountryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CountryModelCopyWith<_CountryModel> get copyWith => __$CountryModelCopyWithImpl<_CountryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CountryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CountryModel&&(identical(other.countryId, countryId) || other.countryId == countryId)&&(identical(other.countryKey, countryKey) || other.countryKey == countryKey)&&(identical(other.countryName, countryName) || other.countryName == countryName)&&(identical(other.iso, iso) || other.iso == iso)&&(identical(other.flag, flag) || other.flag == flag));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,countryId,countryKey,countryName,iso,flag);

@override
String toString() {
  return 'CountryModel(countryId: $countryId, countryKey: $countryKey, countryName: $countryName, iso: $iso, flag: $flag)';
}


}

/// @nodoc
abstract mixin class _$CountryModelCopyWith<$Res> implements $CountryModelCopyWith<$Res> {
  factory _$CountryModelCopyWith(_CountryModel value, $Res Function(_CountryModel) _then) = __$CountryModelCopyWithImpl;
@override @useResult
$Res call({
 int? countryId, String? countryKey, String? countryName, String? iso, String? flag
});




}
/// @nodoc
class __$CountryModelCopyWithImpl<$Res>
    implements _$CountryModelCopyWith<$Res> {
  __$CountryModelCopyWithImpl(this._self, this._then);

  final _CountryModel _self;
  final $Res Function(_CountryModel) _then;

/// Create a copy of CountryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? countryId = freezed,Object? countryKey = freezed,Object? countryName = freezed,Object? iso = freezed,Object? flag = freezed,}) {
  return _then(_CountryModel(
countryId: freezed == countryId ? _self.countryId : countryId // ignore: cast_nullable_to_non_nullable
as int?,countryKey: freezed == countryKey ? _self.countryKey : countryKey // ignore: cast_nullable_to_non_nullable
as String?,countryName: freezed == countryName ? _self.countryName : countryName // ignore: cast_nullable_to_non_nullable
as String?,iso: freezed == iso ? _self.iso : iso // ignore: cast_nullable_to_non_nullable
as String?,flag: freezed == flag ? _self.flag : flag // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
