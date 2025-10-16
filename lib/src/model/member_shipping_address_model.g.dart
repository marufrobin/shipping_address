// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_shipping_address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MemberShippingAddressModel _$MemberShippingAddressModelFromJson(
  Map<String, dynamic> json,
) => _MemberShippingAddressModel(
  memberShippingAddressId: (json['memberShippingAddressId'] as num?)?.toInt(),
  memberAddressKey: json['memberAddressKey'] as String?,
  memberId: (json['memberId'] as num?)?.toInt(),
  firstName: json['firstName'] as String?,
  lastName: json['lastName'] as String?,
  email: json['email'] as String?,
  phoneCode: json['phoneCode'] as String?,
  mobileNo: json['mobileNo'] as String?,
  addressLine1: json['addressLine1'] as String?,
  addressLine2: json['addressLine2'] as String?,
  cityId: (json['cityId'] as num?)?.toInt(),
  countryId: (json['countryId'] as num?)?.toInt(),
  zipCode: json['zipCode'] as String?,
  status: json['status'] as String?,
  isDefault: json['isDefault'] as bool?,
  lastUpdated: json['lastUpdated'] == null
      ? null
      : DateTime.parse(json['lastUpdated'] as String),
  city: json['city'] == null
      ? null
      : CityModel.fromJson(json['city'] as Map<String, dynamic>),
  country: json['country'] == null
      ? null
      : CountryModel.fromJson(json['country'] as Map<String, dynamic>),
);

Map<String, dynamic> _$MemberShippingAddressModelToJson(
  _MemberShippingAddressModel instance,
) => <String, dynamic>{
  'memberShippingAddressId': instance.memberShippingAddressId,
  'memberAddressKey': instance.memberAddressKey,
  'memberId': instance.memberId,
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'email': instance.email,
  'phoneCode': instance.phoneCode,
  'mobileNo': instance.mobileNo,
  'addressLine1': instance.addressLine1,
  'addressLine2': instance.addressLine2,
  'cityId': instance.cityId,
  'countryId': instance.countryId,
  'zipCode': instance.zipCode,
  'status': instance.status,
  'isDefault': instance.isDefault,
  'lastUpdated': instance.lastUpdated?.toIso8601String(),
  'city': instance.city,
  'country': instance.country,
};

_CityModel _$CityModelFromJson(Map<String, dynamic> json) => _CityModel(
  cityId: (json['cityId'] as num?)?.toInt(),
  cityKey: json['cityKey'] as String?,
  cityName: json['cityName'] as String?,
  cityNameAr: json['cityNameAr'] as String?,
  cityStatus: json['cityStatus'] as bool?,
  countryId: (json['countryId'] as num?)?.toInt(),
  createdBy: (json['createdBy'] as num?)?.toInt(),
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  country: json['country'] == null
      ? null
      : CountryModel.fromJson(json['country'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CityModelToJson(_CityModel instance) =>
    <String, dynamic>{
      'cityId': instance.cityId,
      'cityKey': instance.cityKey,
      'cityName': instance.cityName,
      'cityNameAr': instance.cityNameAr,
      'cityStatus': instance.cityStatus,
      'countryId': instance.countryId,
      'createdBy': instance.createdBy,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'country': instance.country,
    };

_CountryModel _$CountryModelFromJson(Map<String, dynamic> json) =>
    _CountryModel(
      countryId: (json['countryId'] as num?)?.toInt(),
      countryKey: json['countryKey'] as String?,
      countryCode: json['countryCode'] as String?,
      countryName: json['countryName'] as String?,
      arabicCountryName: json['arabicCountryName'] as String?,
      flag: json['flag'] as String?,
      status: json['status'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      createdBy: (json['createdBy'] as num?)?.toInt(),
      updatedBy: (json['updatedBy'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CountryModelToJson(_CountryModel instance) =>
    <String, dynamic>{
      'countryId': instance.countryId,
      'countryKey': instance.countryKey,
      'countryCode': instance.countryCode,
      'countryName': instance.countryName,
      'arabicCountryName': instance.arabicCountryName,
      'flag': instance.flag,
      'status': instance.status,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'createdBy': instance.createdBy,
      'updatedBy': instance.updatedBy,
    };
