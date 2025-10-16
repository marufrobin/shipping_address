import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_response_model.freezed.dart';
part 'city_response_model.g.dart';

@freezed
abstract class CityModel with _$CityModel {
  const factory CityModel({
    int? cityId,
    String? cityName,
    String? arabicCityName,
    int? countryId,
    String? countryName,
    String? countryNameAr,
    String? icon,
  }) = _CityModel;

  factory CityModel.fromJson(Map<String, dynamic> json) =>
      _$CityModelFromJson(json);
}
