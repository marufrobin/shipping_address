import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:shipping_address/src/app_config/app_http_service.dart';
import 'package:shipping_address/src/app_config/app_urls.dart';

class AllAddressByMembershipDataProvider {
  final AppHttpService _httpService = AppHttpService();

  Future<Response?> getAllAddressByMembership(String? membershipId) async {
    try {
      if (membershipId == null) throw Exception('membershipId is null');

      final response = await _httpService.dio.get(
        '${AppUrls.getAllAddressByMembership}$membershipId',
      );
      // if (response.statusCode == 200) {
      //   final List<dynamic> data = response.data;
      //   return data
      //       .map((json) => MemberShippingAddressModel.fromJson(json))
      //       .toList();
      // } else {
      //   throw Exception('Failed to load addresses');
      // }
      log(name: "Get all address data response", response.toString());
      return response;
    } catch (e) {
      if (e is DioException) {
        log(name: "Get all address data provider", e.toString());
        throw e.response!.data;
      }
      throw Exception('Failed to load addresses: $e');
    }
  }
}
