import 'dart:developer';

import 'package:shipping_address/src/feature/shopping/data/data_provider/country_data_provider.dart';
import 'package:shipping_address/src/model/country_response_model.dart';

class CountryRepository {
  final CountryDataProvider dataProvider;

  const CountryRepository(this.dataProvider);

  Future<CountryResponseModel?> getCountries() async {
    try {
      final response = await dataProvider.getCountries();
      log(name: "Country Repository", response.toString());

      final data = CountryResponseModel.fromJson(response?.data);
      log(name: "Country Repository", data.toString());

      return data;
    } catch (e) {
      rethrow;
    }
  }
}
