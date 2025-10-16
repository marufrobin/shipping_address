import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shipping_address/src/app_config/app_routes.dart';
import 'package:shipping_address/src/feature/shopping/bloc/delete_address_bloc/delete_address_bloc.dart';
import 'package:shipping_address/src/feature/shopping/presentation/add_shipping_address_screen.dart';

import '../../../../model/member_shipping_address_model.dart';

class AddressTileWidget extends StatelessWidget {
  final MemberShippingAddressModel? address;

  const AddressTileWidget({super.key, this.address});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.06),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(Icons.location_on, color: Colors.blue, size: 24),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${address?.firstName ?? ''} ${address?.lastName ?? ''}"
                            .trim(),
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        address?.city?.cityName ?? 'City',
                        style: TextStyle(fontSize: 13, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                if (address?.isDefault == true)
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.green.shade50,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.green.shade200),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.check_circle, size: 14, color: Colors.green),
                        const SizedBox(width: 4),
                        Text(
                          "Default",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 16),
            _addressDetailRow(
              Icons.home_outlined,
              "${address?.addressLine1 ?? ''}, ${address?.addressLine2 ?? ''}",
            ),
            const SizedBox(height: 8),
            _addressDetailRow(
              Icons.location_city_outlined,
              "${address?.city?.cityName ?? ''}, ${address?.country?.countryName ?? ''}",
            ),
            const SizedBox(height: 8),
            _addressDetailRow(Icons.mail_outline, address?.zipCode ?? 'N/A'),
            const SizedBox(height: 8),
            _addressDetailRow(Icons.phone_outlined, address?.mobileNo ?? ''),
            const SizedBox(height: 16),
            const Divider(height: 1),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: TextButton.icon(
                    onPressed: () {
                      context.pushNamed(
                        AppRoutesNames.addAddress,
                        extra: EditShippingAddressPayload(
                          memberShippingAddressId:
                              address?.memberShippingAddressId,
                          memberId: address?.memberId,
                          phoneCode: address?.phoneCode,
                          mobileNo: address?.mobileNo,
                          email: address?.email,
                          isDefault: address?.isDefault,
                          firstName: address?.firstName,
                          lastName: address?.lastName,
                          addressLine1: address?.addressLine1,
                          addressLine2: address?.addressLine2,
                          cityId: address?.cityId,
                          countryId: address?.countryId,
                          zipCode: address?.zipCode,
                        ),
                      );
                    },
                    icon: const Icon(Icons.edit_outlined, size: 18),
                    label: const Text("Edit"),
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.blue,
                      padding: const EdgeInsets.symmetric(vertical: 8),
                    ),
                  ),
                ),
                Container(width: 1, height: 24, color: Colors.grey[300]),
                Expanded(
                  child: TextButton.icon(
                    onPressed: () {
                      _showDeleteConfirmation(
                        context: context,
                        address: address,
                      );
                    },
                    icon: const Icon(Icons.delete_outline, size: 18),
                    label: const Text("Delete"),
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.red,
                      padding: const EdgeInsets.symmetric(vertical: 8),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _addressDetailRow(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, size: 18, color: Colors.grey[600]),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[700],
              height: 1.4,
            ),
          ),
        ),
      ],
    );
  }

  void _showDeleteConfirmation({
    required BuildContext context,
    MemberShippingAddressModel? address,
  }) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: const Text("Delete Address"),
        content: Text(
          "Are you sure you want to delete this address?\n\n${address?.addressLine1 ?? ''}, ${address?.addressLine2 ?? ''}",
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Cancel"),
          ),
          TextButton(
            onPressed: () {
              context.read<DeleteAddressBloc>().add(
                ExecuteDeleteAddressEvent(
                  addressId: address?.memberShippingAddressId,
                  memberId: address?.memberId,
                ),
              );
              Navigator.pop(context);
            },
            style: TextButton.styleFrom(foregroundColor: Colors.red),
            child: const Text("Delete"),
          ),
        ],
      ),
    );
  }
}
