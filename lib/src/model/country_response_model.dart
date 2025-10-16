import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_response_model.freezed.dart';
part 'country_response_model.g.dart';

@freezed
abstract class CountryResponseModel with _$CountryResponseModel {
  const factory CountryResponseModel({
    bool? success,
    String? message,
    List<CountryModel?>? data,
  }) = _CountryResponseModel;

  factory CountryResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CountryResponseModelFromJson(json);
}

@freezed
abstract class CountryModel with _$CountryModel {
  const factory CountryModel({
    int? countryId,
    String? countryKey,
    String? countryName,
    String? iso,
    String? flag,
  }) = _CountryModel;

  factory CountryModel.fromJson(Map<String, dynamic> json) =>
      _$CountryModelFromJson(json);
}
