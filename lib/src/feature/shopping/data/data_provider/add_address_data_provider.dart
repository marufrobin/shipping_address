import 'package:dio/dio.dart';
import 'package:shipping_address/src/app_config/app_http_service.dart';
import 'package:shipping_address/src/app_config/app_urls.dart';

class AddAddressDataProvider {
  final AppHttpService _appHttpService = AppHttpService();

  Future<Response?> getAddAddressData({
    required int? memberShippingAddressId,
    required int? memberId,
    required String? firstName,
    required String? lastName,
    required String? email,
    required String? mobileNo,
    required String? phoneCode,
    required String? addressLine1,
    required String? addressLine2,
    required int? cityId,
    required int? countryId,
    required String? zipCode,
    required bool? isDefault,
  }) async {
    try {
      final body = {
        "memberShippingAddressId": memberShippingAddressId,
        "memberId": memberId,
        "firstName": firstName,
        "lastName": lastName,
        "email": email,
        "phoneCode": phoneCode,
        "mobileNo": mobileNo,
        "addressLine1": addressLine1,
        "addressLine2": addressLine2,
        "cityId": cityId,
        "countryId": countryId,
        "zipCode": zipCode,
        "isDefault": isDefault,
      };

      final response = await _appHttpService.dio.post(
        AppUrls.addAddress,
        data: body,
        options: Options(headers: {'Content-Type': 'application/json'}),
      );

      return response;
    } on DioException catch (e) {
      // Even if the API returns 400, it might still have a valid message
      if (e.response != null) {
        return e.response;
      }
      rethrow;
    } catch (e) {
      rethrow;
    }
  }
}
