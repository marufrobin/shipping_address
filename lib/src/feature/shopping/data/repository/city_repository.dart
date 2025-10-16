import 'dart:developer';

import 'package:shipping_address/src/feature/shopping/data/data_provider/city_data_provider.dart';
import 'package:shipping_address/src/model/city_response_model.dart';

class CityRepository {
  final CityDataProvider dataProvider;

  const CityRepository(this.dataProvider);

  Future<List<CityModel?>?> getCities() async {
    try {
      final response = await dataProvider.getCityData();
      log(name: "response", response.toString());

      List<CityModel?>? result = [];

      for (var element in response?.data) {
        result.add(CityModel.fromJson(element));
      }
      log(name: "result", result.toString());
      return result;
    } catch (e) {
      rethrow;
    }
  }
}
