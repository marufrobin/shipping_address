import 'dart:developer';

import 'package:shipping_address/src/feature/shopping/data/all_address_by_membership_data_provider.dart';
import 'package:shipping_address/src/model/member_shipping_address_model.dart';

class AllAddressByMembershipRepository {
  final AllAddressByMembershipDataProvider dataProvider;

  const AllAddressByMembershipRepository(this.dataProvider);

  Future<List<MemberShippingAddressModel?>?> getAllAddress(
    String? membershipId,
  ) async {
    try {
      final response = await dataProvider.getAllAddressByMembership(
        membershipId,
      );

      List<MemberShippingAddressModel?> result = [];

      for (var element in response?.data) {
        result.add(MemberShippingAddressModel.fromJson(element));
      }

      log(name: "result", result.toString());
      return result;
    } catch (e) {
      log(name: "error in data provider", e.toString());
      rethrow;
    }
  }
}
