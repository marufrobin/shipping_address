import 'dart:developer';

import 'package:shipping_address/src/feature/shopping/data/data_provider/add_address_data_provider.dart';

class AddAddressRepository {
  final AddAddressDataProvider dataProvider;

  const AddAddressRepository(this.dataProvider);

  Future<Map<String, dynamic>> addAddress({
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
      final response = await dataProvider.getAddAddressData(
        memberShippingAddressId: memberShippingAddressId,
        memberId: memberId,
        firstName: firstName,
        lastName: lastName,
        email: email,
        mobileNo: mobileNo,
        phoneCode: phoneCode,
        addressLine1: addressLine1,
        addressLine2: addressLine2,
        cityId: cityId,
        countryId: countryId,
        zipCode: zipCode,
        isDefault: isDefault,
      );

      log("Response: ${response?.data}");

      ///{
      //     "message": "Address added successfully and set as default.",
      //     "id": 1081
      // }

      // {
      // "message": "Something went wrong while adding address."
      // }

      final data = response?.data;

      log("Response: $data");
      final message = data?['message'] ?? 'No message received.';
      final success = response?.statusCode == 200;

      log('Status: ${response?.statusCode}, Message: $message');

      return {'success': success, 'message': message, 'id': data?['id']};
    } catch (e) {
      return {
        'success': false,
        'message': 'Something went wrong. Please try again later.',
      };
    }
  }

  Future<Map<String, dynamic>> editAddress({
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
      final response = await dataProvider.editAddressData(
        memberShippingAddressId: memberShippingAddressId,
        memberId: memberId,
        firstName: firstName,
        lastName: lastName,
        email: email,
        mobileNo: mobileNo,
        phoneCode: phoneCode,
        addressLine1: addressLine1,
        addressLine2: addressLine2,
        cityId: cityId,
        countryId: countryId,
        zipCode: zipCode,
        isDefault: isDefault,
      );

      log("Response: ${response?.data}");

      ///{
      //     "message": "Address added successfully and set as default.",
      //     "id": 1081
      // }

      // {
      // "message": "Something went wrong while adding address."
      // }

      final data = response?.data;

      log("Response: $data");
      final message = data?['message'] ?? 'No message received.';
      final success = response?.statusCode == 200;

      log('Status: ${response?.statusCode}, Message: $message');

      return {'success': success, 'message': message, 'id': data?['id']};
    } catch (e) {
      return {
        'success': false,
        'message': 'Something went wrong. Please try again later.',
      };
    }
  }
}
