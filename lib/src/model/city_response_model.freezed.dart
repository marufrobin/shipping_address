// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CityModel {

 int? get cityId; String? get cityName; String? get arabicCityName; int? get countryId; String? get countryName; String? get countryNameAr; String? get icon;
/// Create a copy of CityModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CityModelCopyWith<CityModel> get copyWith => _$CityModelCopyWithImpl<CityModel>(this as CityModel, _$identity);

  /// Serializes this CityModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CityModel&&(identical(other.cityId, cityId) || other.cityId == cityId)&&(identical(other.cityName, cityName) || other.cityName == cityName)&&(identical(other.arabicCityName, arabicCityName) || other.arabicCityName == arabicCityName)&&(identical(other.countryId, countryId) || other.countryId == countryId)&&(identical(other.countryName, countryName) || other.countryName == countryName)&&(identical(other.countryNameAr, countryNameAr) || other.countryNameAr == countryNameAr)&&(identical(other.icon, icon) || other.icon == icon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cityId,cityName,arabicCityName,countryId,countryName,countryNameAr,icon);

@override
String toString() {
  return 'CityModel(cityId: $cityId, cityName: $cityName, arabicCityName: $arabicCityName, countryId: $countryId, countryName: $countryName, countryNameAr: $countryNameAr, icon: $icon)';
}


}

/// @nodoc
abstract mixin class $CityModelCopyWith<$Res>  {
  factory $CityModelCopyWith(CityModel value, $Res Function(CityModel) _then) = _$CityModelCopyWithImpl;
@useResult
$Res call({
 int? cityId, String? cityName, String? arabicCityName, int? countryId, String? countryName, String? countryNameAr, String? icon
});




}
/// @nodoc
class _$CityModelCopyWithImpl<$Res>
    implements $CityModelCopyWith<$Res> {
  _$CityModelCopyWithImpl(this._self, this._then);

  final CityModel _self;
  final $Res Function(CityModel) _then;

/// Create a copy of CityModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cityId = freezed,Object? cityName = freezed,Object? arabicCityName = freezed,Object? countryId = freezed,Object? countryName = freezed,Object? countryNameAr = freezed,Object? icon = freezed,}) {
  return _then(_self.copyWith(
cityId: freezed == cityId ? _self.cityId : cityId // ignore: cast_nullable_to_non_nullable
as int?,cityName: freezed == cityName ? _self.cityName : cityName // ignore: cast_nullable_to_non_nullable
as String?,arabicCityName: freezed == arabicCityName ? _self.arabicCityName : arabicCityName // ignore: cast_nullable_to_non_nullable
as String?,countryId: freezed == countryId ? _self.countryId : countryId // ignore: cast_nullable_to_non_nullable
as int?,countryName: freezed == countryName ? _self.countryName : countryName // ignore: cast_nullable_to_non_nullable
as String?,countryNameAr: freezed == countryNameAr ? _self.countryNameAr : countryNameAr // ignore: cast_nullable_to_non_nullable
as String?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CityModel].
extension CityModelPatterns on CityModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CityModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CityModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CityModel value)  $default,){
final _that = this;
switch (_that) {
case _CityModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CityModel value)?  $default,){
final _that = this;
switch (_that) {
case _CityModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? cityId,  String? cityName,  String? arabicCityName,  int? countryId,  String? countryName,  String? countryNameAr,  String? icon)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CityModel() when $default != null:
return $default(_that.cityId,_that.cityName,_that.arabicCityName,_that.countryId,_that.countryName,_that.countryNameAr,_that.icon);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? cityId,  String? cityName,  String? arabicCityName,  int? countryId,  String? countryName,  String? countryNameAr,  String? icon)  $default,) {final _that = this;
switch (_that) {
case _CityModel():
return $default(_that.cityId,_that.cityName,_that.arabicCityName,_that.countryId,_that.countryName,_that.countryNameAr,_that.icon);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? cityId,  String? cityName,  String? arabicCityName,  int? countryId,  String? countryName,  String? countryNameAr,  String? icon)?  $default,) {final _that = this;
switch (_that) {
case _CityModel() when $default != null:
return $default(_that.cityId,_that.cityName,_that.arabicCityName,_that.countryId,_that.countryName,_that.countryNameAr,_that.icon);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CityModel implements CityModel {
  const _CityModel({this.cityId, this.cityName, this.arabicCityName, this.countryId, this.countryName, this.countryNameAr, this.icon});
  factory _CityModel.fromJson(Map<String, dynamic> json) => _$CityModelFromJson(json);

@override final  int? cityId;
@override final  String? cityName;
@override final  String? arabicCityName;
@override final  int? countryId;
@override final  String? countryName;
@override final  String? countryNameAr;
@override final  String? icon;

/// Create a copy of CityModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CityModelCopyWith<_CityModel> get copyWith => __$CityModelCopyWithImpl<_CityModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CityModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CityModel&&(identical(other.cityId, cityId) || other.cityId == cityId)&&(identical(other.cityName, cityName) || other.cityName == cityName)&&(identical(other.arabicCityName, arabicCityName) || other.arabicCityName == arabicCityName)&&(identical(other.countryId, countryId) || other.countryId == countryId)&&(identical(other.countryName, countryName) || other.countryName == countryName)&&(identical(other.countryNameAr, countryNameAr) || other.countryNameAr == countryNameAr)&&(identical(other.icon, icon) || other.icon == icon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cityId,cityName,arabicCityName,countryId,countryName,countryNameAr,icon);

@override
String toString() {
  return 'CityModel(cityId: $cityId, cityName: $cityName, arabicCityName: $arabicCityName, countryId: $countryId, countryName: $countryName, countryNameAr: $countryNameAr, icon: $icon)';
}


}

/// @nodoc
abstract mixin class _$CityModelCopyWith<$Res> implements $CityModelCopyWith<$Res> {
  factory _$CityModelCopyWith(_CityModel value, $Res Function(_CityModel) _then) = __$CityModelCopyWithImpl;
@override @useResult
$Res call({
 int? cityId, String? cityName, String? arabicCityName, int? countryId, String? countryName, String? countryNameAr, String? icon
});




}
/// @nodoc
class __$CityModelCopyWithImpl<$Res>
    implements _$CityModelCopyWith<$Res> {
  __$CityModelCopyWithImpl(this._self, this._then);

  final _CityModel _self;
  final $Res Function(_CityModel) _then;

/// Create a copy of CityModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cityId = freezed,Object? cityName = freezed,Object? arabicCityName = freezed,Object? countryId = freezed,Object? countryName = freezed,Object? countryNameAr = freezed,Object? icon = freezed,}) {
  return _then(_CityModel(
cityId: freezed == cityId ? _self.cityId : cityId // ignore: cast_nullable_to_non_nullable
as int?,cityName: freezed == cityName ? _self.cityName : cityName // ignore: cast_nullable_to_non_nullable
as String?,arabicCityName: freezed == arabicCityName ? _self.arabicCityName : arabicCityName // ignore: cast_nullable_to_non_nullable
as String?,countryId: freezed == countryId ? _self.countryId : countryId // ignore: cast_nullable_to_non_nullable
as int?,countryName: freezed == countryName ? _self.countryName : countryName // ignore: cast_nullable_to_non_nullable
as String?,countryNameAr: freezed == countryNameAr ? _self.countryNameAr : countryNameAr // ignore: cast_nullable_to_non_nullable
as String?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
