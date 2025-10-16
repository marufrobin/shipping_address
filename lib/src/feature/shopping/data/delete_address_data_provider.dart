import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:shipping_address/src/app_config/app_http_service.dart';
import 'package:shipping_address/src/app_config/app_urls.dart';

class DeleteAddressDataProvider {
  final AppHttpService _appHttpService = AppHttpService();

  Future deleteAddress({
    required int? addressId,
    required int? memberId,
  }) async {
    try {
      final response = await _appHttpService.dio.delete(
        "${AppUrls.deleteAddress}/$addressId/$memberId",
      );

      log(name: "DeleteAddressDataProvider", response.toString());
      return response;
    } catch (e) {
      if (e is DioException) {
        log(name: "DeleteAddressDataProvider", e.response.toString());
        throw e.response?.data;
      }
      rethrow;
    }
  }
}
