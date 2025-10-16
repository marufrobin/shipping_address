import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:shipping_address/src/app_config/app_http_service.dart';
import 'package:shipping_address/src/app_config/app_urls.dart';

class CityDataProvider {
  final AppHttpService _httpService = AppHttpService();

  Future<Response?> getCityData() async {
    try {
      final response = await _httpService.dio.get(AppUrls.getAllCities);
      log(name: "CityDataProvider", response.data.toString());

      return response;
    } catch (e) {
      if (e is DioException) {
        throw e.response?.data;
      }
      rethrow;
    }
  }
}
