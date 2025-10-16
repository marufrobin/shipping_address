// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CountryResponseModel _$CountryResponseModelFromJson(
  Map<String, dynamic> json,
) => _CountryResponseModel(
  success: json['success'] as bool?,
  message: json['message'] as String?,
  data: (json['data'] as List<dynamic>?)
      ?.map(
        (e) =>
            e == null ? null : CountryModel.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
);

Map<String, dynamic> _$CountryResponseModelToJson(
  _CountryResponseModel instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
};

_CountryModel _$CountryModelFromJson(Map<String, dynamic> json) =>
    _CountryModel(
      countryId: (json['countryId'] as num?)?.toInt(),
      countryKey: json['countryKey'] as String?,
      countryName: json['countryName'] as String?,
      iso: json['iso'] as String?,
      flag: json['flag'] as String?,
    );

Map<String, dynamic> _$CountryModelToJson(_CountryModel instance) =>
    <String, dynamic>{
      'countryId': instance.countryId,
      'countryKey': instance.countryKey,
      'countryName': instance.countryName,
      'iso': instance.iso,
      'flag': instance.flag,
    };
