import 'package:freezed_annotation/freezed_annotation.dart';

part 'member_shipping_address_model.freezed.dart';
part 'member_shipping_address_model.g.dart';

@freezed
abstract class MemberShippingAddressModel with _$MemberShippingAddressModel {
  const factory MemberShippingAddressModel({
    int? memberShippingAddressId,
    String? memberAddressKey,
    int? memberId,
    String? firstName,
    String? lastName,
    String? email,
    String? phoneCode,
    String? mobileNo,
    String? addressLine1,
    String? addressLine2,
    int? cityId,
    int? countryId,
    String? zipCode,
    String? status,
    bool? isDefault,
    DateTime? lastUpdated,
    CityModel? city,
    CountryModel? country,
  }) = _MemberShippingAddressModel;

  factory MemberShippingAddressModel.fromJson(Map<String, dynamic> json) =>
      _$MemberShippingAddressModelFromJson(json);
}

@freezed
abstract class CityModel with _$CityModel {
  const factory CityModel({
    int? cityId,
    String? cityKey,
    String? cityName,
    String? cityNameAr,
    bool? cityStatus,
    int? countryId,
    int? createdBy,
    DateTime? createdAt,
    DateTime? updatedAt,
    CountryModel? country,
  }) = _CityModel;

  factory CityModel.fromJson(Map<String, dynamic> json) =>
      _$CityModelFromJson(json);
}

@freezed
abstract class CountryModel with _$CountryModel {
  const factory CountryModel({
    int? countryId,
    String? countryKey,
    String? countryCode,
    String? countryName,
    String? arabicCountryName,
    String? flag,
    String? status,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? createdBy,
    int? updatedBy,
  }) = _CountryModel;

  factory CountryModel.fromJson(Map<String, dynamic> json) =>
      _$CountryModelFromJson(json);
}
