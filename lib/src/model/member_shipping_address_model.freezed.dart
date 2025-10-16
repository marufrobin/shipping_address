// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_shipping_address_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MemberShippingAddressModel {

 int? get memberShippingAddressId; String? get memberAddressKey; int? get memberId; String? get firstName; String? get lastName; String? get email; String? get phoneCode; String? get mobileNo; String? get addressLine1; String? get addressLine2; int? get cityId; int? get countryId; String? get zipCode; String? get status; bool? get isDefault; DateTime? get lastUpdated; CityModel? get city; CountryModel? get country;
/// Create a copy of MemberShippingAddressModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MemberShippingAddressModelCopyWith<MemberShippingAddressModel> get copyWith => _$MemberShippingAddressModelCopyWithImpl<MemberShippingAddressModel>(this as MemberShippingAddressModel, _$identity);

  /// Serializes this MemberShippingAddressModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MemberShippingAddressModel&&(identical(other.memberShippingAddressId, memberShippingAddressId) || other.memberShippingAddressId == memberShippingAddressId)&&(identical(other.memberAddressKey, memberAddressKey) || other.memberAddressKey == memberAddressKey)&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.email, email) || other.email == email)&&(identical(other.phoneCode, phoneCode) || other.phoneCode == phoneCode)&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo)&&(identical(other.addressLine1, addressLine1) || other.addressLine1 == addressLine1)&&(identical(other.addressLine2, addressLine2) || other.addressLine2 == addressLine2)&&(identical(other.cityId, cityId) || other.cityId == cityId)&&(identical(other.countryId, countryId) || other.countryId == countryId)&&(identical(other.zipCode, zipCode) || other.zipCode == zipCode)&&(identical(other.status, status) || other.status == status)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.city, city) || other.city == city)&&(identical(other.country, country) || other.country == country));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,memberShippingAddressId,memberAddressKey,memberId,firstName,lastName,email,phoneCode,mobileNo,addressLine1,addressLine2,cityId,countryId,zipCode,status,isDefault,lastUpdated,city,country);

@override
String toString() {
  return 'MemberShippingAddressModel(memberShippingAddressId: $memberShippingAddressId, memberAddressKey: $memberAddressKey, memberId: $memberId, firstName: $firstName, lastName: $lastName, email: $email, phoneCode: $phoneCode, mobileNo: $mobileNo, addressLine1: $addressLine1, addressLine2: $addressLine2, cityId: $cityId, countryId: $countryId, zipCode: $zipCode, status: $status, isDefault: $isDefault, lastUpdated: $lastUpdated, city: $city, country: $country)';
}


}

/// @nodoc
abstract mixin class $MemberShippingAddressModelCopyWith<$Res>  {
  factory $MemberShippingAddressModelCopyWith(MemberShippingAddressModel value, $Res Function(MemberShippingAddressModel) _then) = _$MemberShippingAddressModelCopyWithImpl;
@useResult
$Res call({
 int? memberShippingAddressId, String? memberAddressKey, int? memberId, String? firstName, String? lastName, String? email, String? phoneCode, String? mobileNo, String? addressLine1, String? addressLine2, int? cityId, int? countryId, String? zipCode, String? status, bool? isDefault, DateTime? lastUpdated, CityModel? city, CountryModel? country
});


$CityModelCopyWith<$Res>? get city;$CountryModelCopyWith<$Res>? get country;

}
/// @nodoc
class _$MemberShippingAddressModelCopyWithImpl<$Res>
    implements $MemberShippingAddressModelCopyWith<$Res> {
  _$MemberShippingAddressModelCopyWithImpl(this._self, this._then);

  final MemberShippingAddressModel _self;
  final $Res Function(MemberShippingAddressModel) _then;

/// Create a copy of MemberShippingAddressModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? memberShippingAddressId = freezed,Object? memberAddressKey = freezed,Object? memberId = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? email = freezed,Object? phoneCode = freezed,Object? mobileNo = freezed,Object? addressLine1 = freezed,Object? addressLine2 = freezed,Object? cityId = freezed,Object? countryId = freezed,Object? zipCode = freezed,Object? status = freezed,Object? isDefault = freezed,Object? lastUpdated = freezed,Object? city = freezed,Object? country = freezed,}) {
  return _then(_self.copyWith(
memberShippingAddressId: freezed == memberShippingAddressId ? _self.memberShippingAddressId : memberShippingAddressId // ignore: cast_nullable_to_non_nullable
as int?,memberAddressKey: freezed == memberAddressKey ? _self.memberAddressKey : memberAddressKey // ignore: cast_nullable_to_non_nullable
as String?,memberId: freezed == memberId ? _self.memberId : memberId // ignore: cast_nullable_to_non_nullable
as int?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phoneCode: freezed == phoneCode ? _self.phoneCode : phoneCode // ignore: cast_nullable_to_non_nullable
as String?,mobileNo: freezed == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String?,addressLine1: freezed == addressLine1 ? _self.addressLine1 : addressLine1 // ignore: cast_nullable_to_non_nullable
as String?,addressLine2: freezed == addressLine2 ? _self.addressLine2 : addressLine2 // ignore: cast_nullable_to_non_nullable
as String?,cityId: freezed == cityId ? _self.cityId : cityId // ignore: cast_nullable_to_non_nullable
as int?,countryId: freezed == countryId ? _self.countryId : countryId // ignore: cast_nullable_to_non_nullable
as int?,zipCode: freezed == zipCode ? _self.zipCode : zipCode // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,isDefault: freezed == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool?,lastUpdated: freezed == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as CityModel?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as CountryModel?,
  ));
}
/// Create a copy of MemberShippingAddressModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CityModelCopyWith<$Res>? get city {
    if (_self.city == null) {
    return null;
  }

  return $CityModelCopyWith<$Res>(_self.city!, (value) {
    return _then(_self.copyWith(city: value));
  });
}/// Create a copy of MemberShippingAddressModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CountryModelCopyWith<$Res>? get country {
    if (_self.country == null) {
    return null;
  }

  return $CountryModelCopyWith<$Res>(_self.country!, (value) {
    return _then(_self.copyWith(country: value));
  });
}
}


/// Adds pattern-matching-related methods to [MemberShippingAddressModel].
extension MemberShippingAddressModelPatterns on MemberShippingAddressModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MemberShippingAddressModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MemberShippingAddressModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MemberShippingAddressModel value)  $default,){
final _that = this;
switch (_that) {
case _MemberShippingAddressModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MemberShippingAddressModel value)?  $default,){
final _that = this;
switch (_that) {
case _MemberShippingAddressModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? memberShippingAddressId,  String? memberAddressKey,  int? memberId,  String? firstName,  String? lastName,  String? email,  String? phoneCode,  String? mobileNo,  String? addressLine1,  String? addressLine2,  int? cityId,  int? countryId,  String? zipCode,  String? status,  bool? isDefault,  DateTime? lastUpdated,  CityModel? city,  CountryModel? country)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MemberShippingAddressModel() when $default != null:
return $default(_that.memberShippingAddressId,_that.memberAddressKey,_that.memberId,_that.firstName,_that.lastName,_that.email,_that.phoneCode,_that.mobileNo,_that.addressLine1,_that.addressLine2,_that.cityId,_that.countryId,_that.zipCode,_that.status,_that.isDefault,_that.lastUpdated,_that.city,_that.country);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? memberShippingAddressId,  String? memberAddressKey,  int? memberId,  String? firstName,  String? lastName,  String? email,  String? phoneCode,  String? mobileNo,  String? addressLine1,  String? addressLine2,  int? cityId,  int? countryId,  String? zipCode,  String? status,  bool? isDefault,  DateTime? lastUpdated,  CityModel? city,  CountryModel? country)  $default,) {final _that = this;
switch (_that) {
case _MemberShippingAddressModel():
return $default(_that.memberShippingAddressId,_that.memberAddressKey,_that.memberId,_that.firstName,_that.lastName,_that.email,_that.phoneCode,_that.mobileNo,_that.addressLine1,_that.addressLine2,_that.cityId,_that.countryId,_that.zipCode,_that.status,_that.isDefault,_that.lastUpdated,_that.city,_that.country);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? memberShippingAddressId,  String? memberAddressKey,  int? memberId,  String? firstName,  String? lastName,  String? email,  String? phoneCode,  String? mobileNo,  String? addressLine1,  String? addressLine2,  int? cityId,  int? countryId,  String? zipCode,  String? status,  bool? isDefault,  DateTime? lastUpdated,  CityModel? city,  CountryModel? country)?  $default,) {final _that = this;
switch (_that) {
case _MemberShippingAddressModel() when $default != null:
return $default(_that.memberShippingAddressId,_that.memberAddressKey,_that.memberId,_that.firstName,_that.lastName,_that.email,_that.phoneCode,_that.mobileNo,_that.addressLine1,_that.addressLine2,_that.cityId,_that.countryId,_that.zipCode,_that.status,_that.isDefault,_that.lastUpdated,_that.city,_that.country);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MemberShippingAddressModel implements MemberShippingAddressModel {
  const _MemberShippingAddressModel({this.memberShippingAddressId, this.memberAddressKey, this.memberId, this.firstName, this.lastName, this.email, this.phoneCode, this.mobileNo, this.addressLine1, this.addressLine2, this.cityId, this.countryId, this.zipCode, this.status, this.isDefault, this.lastUpdated, this.city, this.country});
  factory _MemberShippingAddressModel.fromJson(Map<String, dynamic> json) => _$MemberShippingAddressModelFromJson(json);

@override final  int? memberShippingAddressId;
@override final  String? memberAddressKey;
@override final  int? memberId;
@override final  String? firstName;
@override final  String? lastName;
@override final  String? email;
@override final  String? phoneCode;
@override final  String? mobileNo;
@override final  String? addressLine1;
@override final  String? addressLine2;
@override final  int? cityId;
@override final  int? countryId;
@override final  String? zipCode;
@override final  String? status;
@override final  bool? isDefault;
@override final  DateTime? lastUpdated;
@override final  CityModel? city;
@override final  CountryModel? country;

/// Create a copy of MemberShippingAddressModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MemberShippingAddressModelCopyWith<_MemberShippingAddressModel> get copyWith => __$MemberShippingAddressModelCopyWithImpl<_MemberShippingAddressModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MemberShippingAddressModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MemberShippingAddressModel&&(identical(other.memberShippingAddressId, memberShippingAddressId) || other.memberShippingAddressId == memberShippingAddressId)&&(identical(other.memberAddressKey, memberAddressKey) || other.memberAddressKey == memberAddressKey)&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.email, email) || other.email == email)&&(identical(other.phoneCode, phoneCode) || other.phoneCode == phoneCode)&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo)&&(identical(other.addressLine1, addressLine1) || other.addressLine1 == addressLine1)&&(identical(other.addressLine2, addressLine2) || other.addressLine2 == addressLine2)&&(identical(other.cityId, cityId) || other.cityId == cityId)&&(identical(other.countryId, countryId) || other.countryId == countryId)&&(identical(other.zipCode, zipCode) || other.zipCode == zipCode)&&(identical(other.status, status) || other.status == status)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.city, city) || other.city == city)&&(identical(other.country, country) || other.country == country));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,memberShippingAddressId,memberAddressKey,memberId,firstName,lastName,email,phoneCode,mobileNo,addressLine1,addressLine2,cityId,countryId,zipCode,status,isDefault,lastUpdated,city,country);

@override
String toString() {
  return 'MemberShippingAddressModel(memberShippingAddressId: $memberShippingAddressId, memberAddressKey: $memberAddressKey, memberId: $memberId, firstName: $firstName, lastName: $lastName, email: $email, phoneCode: $phoneCode, mobileNo: $mobileNo, addressLine1: $addressLine1, addressLine2: $addressLine2, cityId: $cityId, countryId: $countryId, zipCode: $zipCode, status: $status, isDefault: $isDefault, lastUpdated: $lastUpdated, city: $city, country: $country)';
}


}

/// @nodoc
abstract mixin class _$MemberShippingAddressModelCopyWith<$Res> implements $MemberShippingAddressModelCopyWith<$Res> {
  factory _$MemberShippingAddressModelCopyWith(_MemberShippingAddressModel value, $Res Function(_MemberShippingAddressModel) _then) = __$MemberShippingAddressModelCopyWithImpl;
@override @useResult
$Res call({
 int? memberShippingAddressId, String? memberAddressKey, int? memberId, String? firstName, String? lastName, String? email, String? phoneCode, String? mobileNo, String? addressLine1, String? addressLine2, int? cityId, int? countryId, String? zipCode, String? status, bool? isDefault, DateTime? lastUpdated, CityModel? city, CountryModel? country
});


@override $CityModelCopyWith<$Res>? get city;@override $CountryModelCopyWith<$Res>? get country;

}
/// @nodoc
class __$MemberShippingAddressModelCopyWithImpl<$Res>
    implements _$MemberShippingAddressModelCopyWith<$Res> {
  __$MemberShippingAddressModelCopyWithImpl(this._self, this._then);

  final _MemberShippingAddressModel _self;
  final $Res Function(_MemberShippingAddressModel) _then;

/// Create a copy of MemberShippingAddressModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? memberShippingAddressId = freezed,Object? memberAddressKey = freezed,Object? memberId = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? email = freezed,Object? phoneCode = freezed,Object? mobileNo = freezed,Object? addressLine1 = freezed,Object? addressLine2 = freezed,Object? cityId = freezed,Object? countryId = freezed,Object? zipCode = freezed,Object? status = freezed,Object? isDefault = freezed,Object? lastUpdated = freezed,Object? city = freezed,Object? country = freezed,}) {
  return _then(_MemberShippingAddressModel(
memberShippingAddressId: freezed == memberShippingAddressId ? _self.memberShippingAddressId : memberShippingAddressId // ignore: cast_nullable_to_non_nullable
as int?,memberAddressKey: freezed == memberAddressKey ? _self.memberAddressKey : memberAddressKey // ignore: cast_nullable_to_non_nullable
as String?,memberId: freezed == memberId ? _self.memberId : memberId // ignore: cast_nullable_to_non_nullable
as int?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phoneCode: freezed == phoneCode ? _self.phoneCode : phoneCode // ignore: cast_nullable_to_non_nullable
as String?,mobileNo: freezed == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String?,addressLine1: freezed == addressLine1 ? _self.addressLine1 : addressLine1 // ignore: cast_nullable_to_non_nullable
as String?,addressLine2: freezed == addressLine2 ? _self.addressLine2 : addressLine2 // ignore: cast_nullable_to_non_nullable
as String?,cityId: freezed == cityId ? _self.cityId : cityId // ignore: cast_nullable_to_non_nullable
as int?,countryId: freezed == countryId ? _self.countryId : countryId // ignore: cast_nullable_to_non_nullable
as int?,zipCode: freezed == zipCode ? _self.zipCode : zipCode // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,isDefault: freezed == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool?,lastUpdated: freezed == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as CityModel?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as CountryModel?,
  ));
}

/// Create a copy of MemberShippingAddressModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CityModelCopyWith<$Res>? get city {
    if (_self.city == null) {
    return null;
  }

  return $CityModelCopyWith<$Res>(_self.city!, (value) {
    return _then(_self.copyWith(city: value));
  });
}/// Create a copy of MemberShippingAddressModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CountryModelCopyWith<$Res>? get country {
    if (_self.country == null) {
    return null;
  }

  return $CountryModelCopyWith<$Res>(_self.country!, (value) {
    return _then(_self.copyWith(country: value));
  });
}
}


/// @nodoc
mixin _$CityModel {

 int? get cityId; String? get cityKey; String? get cityName; String? get cityNameAr; bool? get cityStatus; int? get countryId; int? get createdBy; DateTime? get createdAt; DateTime? get updatedAt; CountryModel? get country;
/// Create a copy of CityModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CityModelCopyWith<CityModel> get copyWith => _$CityModelCopyWithImpl<CityModel>(this as CityModel, _$identity);

  /// Serializes this CityModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CityModel&&(identical(other.cityId, cityId) || other.cityId == cityId)&&(identical(other.cityKey, cityKey) || other.cityKey == cityKey)&&(identical(other.cityName, cityName) || other.cityName == cityName)&&(identical(other.cityNameAr, cityNameAr) || other.cityNameAr == cityNameAr)&&(identical(other.cityStatus, cityStatus) || other.cityStatus == cityStatus)&&(identical(other.countryId, countryId) || other.countryId == countryId)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.country, country) || other.country == country));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cityId,cityKey,cityName,cityNameAr,cityStatus,countryId,createdBy,createdAt,updatedAt,country);

@override
String toString() {
  return 'CityModel(cityId: $cityId, cityKey: $cityKey, cityName: $cityName, cityNameAr: $cityNameAr, cityStatus: $cityStatus, countryId: $countryId, createdBy: $createdBy, createdAt: $createdAt, updatedAt: $updatedAt, country: $country)';
}


}

/// @nodoc
abstract mixin class $CityModelCopyWith<$Res>  {
  factory $CityModelCopyWith(CityModel value, $Res Function(CityModel) _then) = _$CityModelCopyWithImpl;
@useResult
$Res call({
 int? cityId, String? cityKey, String? cityName, String? cityNameAr, bool? cityStatus, int? countryId, int? createdBy, DateTime? createdAt, DateTime? updatedAt, CountryModel? country
});


$CountryModelCopyWith<$Res>? get country;

}
/// @nodoc
class _$CityModelCopyWithImpl<$Res>
    implements $CityModelCopyWith<$Res> {
  _$CityModelCopyWithImpl(this._self, this._then);

  final CityModel _self;
  final $Res Function(CityModel) _then;

/// Create a copy of CityModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cityId = freezed,Object? cityKey = freezed,Object? cityName = freezed,Object? cityNameAr = freezed,Object? cityStatus = freezed,Object? countryId = freezed,Object? createdBy = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? country = freezed,}) {
  return _then(_self.copyWith(
cityId: freezed == cityId ? _self.cityId : cityId // ignore: cast_nullable_to_non_nullable
as int?,cityKey: freezed == cityKey ? _self.cityKey : cityKey // ignore: cast_nullable_to_non_nullable
as String?,cityName: freezed == cityName ? _self.cityName : cityName // ignore: cast_nullable_to_non_nullable
as String?,cityNameAr: freezed == cityNameAr ? _self.cityNameAr : cityNameAr // ignore: cast_nullable_to_non_nullable
as String?,cityStatus: freezed == cityStatus ? _self.cityStatus : cityStatus // ignore: cast_nullable_to_non_nullable
as bool?,countryId: freezed == countryId ? _self.countryId : countryId // ignore: cast_nullable_to_non_nullable
as int?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as CountryModel?,
  ));
}
/// Create a copy of CityModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CountryModelCopyWith<$Res>? get country {
    if (_self.country == null) {
    return null;
  }

  return $CountryModelCopyWith<$Res>(_self.country!, (value) {
    return _then(_self.copyWith(country: value));
  });
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? cityId,  String? cityKey,  String? cityName,  String? cityNameAr,  bool? cityStatus,  int? countryId,  int? createdBy,  DateTime? createdAt,  DateTime? updatedAt,  CountryModel? country)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CityModel() when $default != null:
return $default(_that.cityId,_that.cityKey,_that.cityName,_that.cityNameAr,_that.cityStatus,_that.countryId,_that.createdBy,_that.createdAt,_that.updatedAt,_that.country);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? cityId,  String? cityKey,  String? cityName,  String? cityNameAr,  bool? cityStatus,  int? countryId,  int? createdBy,  DateTime? createdAt,  DateTime? updatedAt,  CountryModel? country)  $default,) {final _that = this;
switch (_that) {
case _CityModel():
return $default(_that.cityId,_that.cityKey,_that.cityName,_that.cityNameAr,_that.cityStatus,_that.countryId,_that.createdBy,_that.createdAt,_that.updatedAt,_that.country);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? cityId,  String? cityKey,  String? cityName,  String? cityNameAr,  bool? cityStatus,  int? countryId,  int? createdBy,  DateTime? createdAt,  DateTime? updatedAt,  CountryModel? country)?  $default,) {final _that = this;
switch (_that) {
case _CityModel() when $default != null:
return $default(_that.cityId,_that.cityKey,_that.cityName,_that.cityNameAr,_that.cityStatus,_that.countryId,_that.createdBy,_that.createdAt,_that.updatedAt,_that.country);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CityModel implements CityModel {
  const _CityModel({this.cityId, this.cityKey, this.cityName, this.cityNameAr, this.cityStatus, this.countryId, this.createdBy, this.createdAt, this.updatedAt, this.country});
  factory _CityModel.fromJson(Map<String, dynamic> json) => _$CityModelFromJson(json);

@override final  int? cityId;
@override final  String? cityKey;
@override final  String? cityName;
@override final  String? cityNameAr;
@override final  bool? cityStatus;
@override final  int? countryId;
@override final  int? createdBy;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
@override final  CountryModel? country;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CityModel&&(identical(other.cityId, cityId) || other.cityId == cityId)&&(identical(other.cityKey, cityKey) || other.cityKey == cityKey)&&(identical(other.cityName, cityName) || other.cityName == cityName)&&(identical(other.cityNameAr, cityNameAr) || other.cityNameAr == cityNameAr)&&(identical(other.cityStatus, cityStatus) || other.cityStatus == cityStatus)&&(identical(other.countryId, countryId) || other.countryId == countryId)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.country, country) || other.country == country));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cityId,cityKey,cityName,cityNameAr,cityStatus,countryId,createdBy,createdAt,updatedAt,country);

@override
String toString() {
  return 'CityModel(cityId: $cityId, cityKey: $cityKey, cityName: $cityName, cityNameAr: $cityNameAr, cityStatus: $cityStatus, countryId: $countryId, createdBy: $createdBy, createdAt: $createdAt, updatedAt: $updatedAt, country: $country)';
}


}

/// @nodoc
abstract mixin class _$CityModelCopyWith<$Res> implements $CityModelCopyWith<$Res> {
  factory _$CityModelCopyWith(_CityModel value, $Res Function(_CityModel) _then) = __$CityModelCopyWithImpl;
@override @useResult
$Res call({
 int? cityId, String? cityKey, String? cityName, String? cityNameAr, bool? cityStatus, int? countryId, int? createdBy, DateTime? createdAt, DateTime? updatedAt, CountryModel? country
});


@override $CountryModelCopyWith<$Res>? get country;

}
/// @nodoc
class __$CityModelCopyWithImpl<$Res>
    implements _$CityModelCopyWith<$Res> {
  __$CityModelCopyWithImpl(this._self, this._then);

  final _CityModel _self;
  final $Res Function(_CityModel) _then;

/// Create a copy of CityModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cityId = freezed,Object? cityKey = freezed,Object? cityName = freezed,Object? cityNameAr = freezed,Object? cityStatus = freezed,Object? countryId = freezed,Object? createdBy = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? country = freezed,}) {
  return _then(_CityModel(
cityId: freezed == cityId ? _self.cityId : cityId // ignore: cast_nullable_to_non_nullable
as int?,cityKey: freezed == cityKey ? _self.cityKey : cityKey // ignore: cast_nullable_to_non_nullable
as String?,cityName: freezed == cityName ? _self.cityName : cityName // ignore: cast_nullable_to_non_nullable
as String?,cityNameAr: freezed == cityNameAr ? _self.cityNameAr : cityNameAr // ignore: cast_nullable_to_non_nullable
as String?,cityStatus: freezed == cityStatus ? _self.cityStatus : cityStatus // ignore: cast_nullable_to_non_nullable
as bool?,countryId: freezed == countryId ? _self.countryId : countryId // ignore: cast_nullable_to_non_nullable
as int?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as CountryModel?,
  ));
}

/// Create a copy of CityModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CountryModelCopyWith<$Res>? get country {
    if (_self.country == null) {
    return null;
  }

  return $CountryModelCopyWith<$Res>(_self.country!, (value) {
    return _then(_self.copyWith(country: value));
  });
}
}


/// @nodoc
mixin _$CountryModel {

 int? get countryId; String? get countryKey; String? get countryCode; String? get countryName; String? get arabicCountryName; String? get flag; String? get status; DateTime? get createdAt; DateTime? get updatedAt; int? get createdBy; int? get updatedBy;
/// Create a copy of CountryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CountryModelCopyWith<CountryModel> get copyWith => _$CountryModelCopyWithImpl<CountryModel>(this as CountryModel, _$identity);

  /// Serializes this CountryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CountryModel&&(identical(other.countryId, countryId) || other.countryId == countryId)&&(identical(other.countryKey, countryKey) || other.countryKey == countryKey)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.countryName, countryName) || other.countryName == countryName)&&(identical(other.arabicCountryName, arabicCountryName) || other.arabicCountryName == arabicCountryName)&&(identical(other.flag, flag) || other.flag == flag)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,countryId,countryKey,countryCode,countryName,arabicCountryName,flag,status,createdAt,updatedAt,createdBy,updatedBy);

@override
String toString() {
  return 'CountryModel(countryId: $countryId, countryKey: $countryKey, countryCode: $countryCode, countryName: $countryName, arabicCountryName: $arabicCountryName, flag: $flag, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, updatedBy: $updatedBy)';
}


}

/// @nodoc
abstract mixin class $CountryModelCopyWith<$Res>  {
  factory $CountryModelCopyWith(CountryModel value, $Res Function(CountryModel) _then) = _$CountryModelCopyWithImpl;
@useResult
$Res call({
 int? countryId, String? countryKey, String? countryCode, String? countryName, String? arabicCountryName, String? flag, String? status, DateTime? createdAt, DateTime? updatedAt, int? createdBy, int? updatedBy
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
@pragma('vm:prefer-inline') @override $Res call({Object? countryId = freezed,Object? countryKey = freezed,Object? countryCode = freezed,Object? countryName = freezed,Object? arabicCountryName = freezed,Object? flag = freezed,Object? status = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,Object? updatedBy = freezed,}) {
  return _then(_self.copyWith(
countryId: freezed == countryId ? _self.countryId : countryId // ignore: cast_nullable_to_non_nullable
as int?,countryKey: freezed == countryKey ? _self.countryKey : countryKey // ignore: cast_nullable_to_non_nullable
as String?,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String?,countryName: freezed == countryName ? _self.countryName : countryName // ignore: cast_nullable_to_non_nullable
as String?,arabicCountryName: freezed == arabicCountryName ? _self.arabicCountryName : arabicCountryName // ignore: cast_nullable_to_non_nullable
as String?,flag: freezed == flag ? _self.flag : flag // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as int?,updatedBy: freezed == updatedBy ? _self.updatedBy : updatedBy // ignore: cast_nullable_to_non_nullable
as int?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? countryId,  String? countryKey,  String? countryCode,  String? countryName,  String? arabicCountryName,  String? flag,  String? status,  DateTime? createdAt,  DateTime? updatedAt,  int? createdBy,  int? updatedBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CountryModel() when $default != null:
return $default(_that.countryId,_that.countryKey,_that.countryCode,_that.countryName,_that.arabicCountryName,_that.flag,_that.status,_that.createdAt,_that.updatedAt,_that.createdBy,_that.updatedBy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? countryId,  String? countryKey,  String? countryCode,  String? countryName,  String? arabicCountryName,  String? flag,  String? status,  DateTime? createdAt,  DateTime? updatedAt,  int? createdBy,  int? updatedBy)  $default,) {final _that = this;
switch (_that) {
case _CountryModel():
return $default(_that.countryId,_that.countryKey,_that.countryCode,_that.countryName,_that.arabicCountryName,_that.flag,_that.status,_that.createdAt,_that.updatedAt,_that.createdBy,_that.updatedBy);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? countryId,  String? countryKey,  String? countryCode,  String? countryName,  String? arabicCountryName,  String? flag,  String? status,  DateTime? createdAt,  DateTime? updatedAt,  int? createdBy,  int? updatedBy)?  $default,) {final _that = this;
switch (_that) {
case _CountryModel() when $default != null:
return $default(_that.countryId,_that.countryKey,_that.countryCode,_that.countryName,_that.arabicCountryName,_that.flag,_that.status,_that.createdAt,_that.updatedAt,_that.createdBy,_that.updatedBy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CountryModel implements CountryModel {
  const _CountryModel({this.countryId, this.countryKey, this.countryCode, this.countryName, this.arabicCountryName, this.flag, this.status, this.createdAt, this.updatedAt, this.createdBy, this.updatedBy});
  factory _CountryModel.fromJson(Map<String, dynamic> json) => _$CountryModelFromJson(json);

@override final  int? countryId;
@override final  String? countryKey;
@override final  String? countryCode;
@override final  String? countryName;
@override final  String? arabicCountryName;
@override final  String? flag;
@override final  String? status;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
@override final  int? createdBy;
@override final  int? updatedBy;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CountryModel&&(identical(other.countryId, countryId) || other.countryId == countryId)&&(identical(other.countryKey, countryKey) || other.countryKey == countryKey)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.countryName, countryName) || other.countryName == countryName)&&(identical(other.arabicCountryName, arabicCountryName) || other.arabicCountryName == arabicCountryName)&&(identical(other.flag, flag) || other.flag == flag)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,countryId,countryKey,countryCode,countryName,arabicCountryName,flag,status,createdAt,updatedAt,createdBy,updatedBy);

@override
String toString() {
  return 'CountryModel(countryId: $countryId, countryKey: $countryKey, countryCode: $countryCode, countryName: $countryName, arabicCountryName: $arabicCountryName, flag: $flag, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, updatedBy: $updatedBy)';
}


}

/// @nodoc
abstract mixin class _$CountryModelCopyWith<$Res> implements $CountryModelCopyWith<$Res> {
  factory _$CountryModelCopyWith(_CountryModel value, $Res Function(_CountryModel) _then) = __$CountryModelCopyWithImpl;
@override @useResult
$Res call({
 int? countryId, String? countryKey, String? countryCode, String? countryName, String? arabicCountryName, String? flag, String? status, DateTime? createdAt, DateTime? updatedAt, int? createdBy, int? updatedBy
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
@override @pragma('vm:prefer-inline') $Res call({Object? countryId = freezed,Object? countryKey = freezed,Object? countryCode = freezed,Object? countryName = freezed,Object? arabicCountryName = freezed,Object? flag = freezed,Object? status = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,Object? updatedBy = freezed,}) {
  return _then(_CountryModel(
countryId: freezed == countryId ? _self.countryId : countryId // ignore: cast_nullable_to_non_nullable
as int?,countryKey: freezed == countryKey ? _self.countryKey : countryKey // ignore: cast_nullable_to_non_nullable
as String?,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String?,countryName: freezed == countryName ? _self.countryName : countryName // ignore: cast_nullable_to_non_nullable
as String?,arabicCountryName: freezed == arabicCountryName ? _self.arabicCountryName : arabicCountryName // ignore: cast_nullable_to_non_nullable
as String?,flag: freezed == flag ? _self.flag : flag // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as int?,updatedBy: freezed == updatedBy ? _self.updatedBy : updatedBy // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
