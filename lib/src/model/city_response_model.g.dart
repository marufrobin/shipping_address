// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CityModel _$CityModelFromJson(Map<String, dynamic> json) => _CityModel(
  cityId: (json['cityId'] as num?)?.toInt(),
  cityName: json['cityName'] as String?,
  arabicCityName: json['arabicCityName'] as String?,
  countryId: (json['countryId'] as num?)?.toInt(),
  countryName: json['countryName'] as String?,
  countryNameAr: json['countryNameAr'] as String?,
  icon: json['icon'] as String?,
);

Map<String, dynamic> _$CityModelToJson(_CityModel instance) =>
    <String, dynamic>{
      'cityId': instance.cityId,
      'cityName': instance.cityName,
      'arabicCityName': instance.arabicCityName,
      'countryId': instance.countryId,
      'countryName': instance.countryName,
      'countryNameAr': instance.countryNameAr,
      'icon': instance.icon,
    };
