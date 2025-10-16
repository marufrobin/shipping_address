import 'package:shipping_address/src/feature/shopping/data/data_provider/delete_address_data_provider.dart';

class DeleteAddressRepository {
  final DeleteAddressDataProvider dataProvider;

  const DeleteAddressRepository(this.dataProvider);

  Future<void> deleteAddress({
    required int? addressId,
    required int? memberId,
  }) async {
    try {
      return await dataProvider.deleteAddress(
        addressId: addressId,
        memberId: memberId,
      );
    } catch (e) {
      rethrow;
    }
  }
}
