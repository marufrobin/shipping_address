import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:shipping_address/src/app_config/app_http_service.dart';
import 'package:shipping_address/src/app_config/app_urls.dart';

class CountryDataProvider {
  final AppHttpService _appHttpService = AppHttpService();

  Future<Response?> getCountries() async {
    try {
      final response = await _appHttpService.dio.get(AppUrls.getAllCountries);
      log(name: "getCountries", response.data.toString());

      return response;
    } catch (e) {
      if (e is DioException) {
        throw e.response?.data;
      }
      rethrow;
    }
  }
}
