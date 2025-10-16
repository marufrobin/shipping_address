import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shipping_address/src/feature/shopping/bloc/all_address_by_membership_bloc.dart';

import '../../../model/member_shipping_address_model.dart';

class ShoppingScreen extends StatefulWidget {
  const ShoppingScreen({super.key});

  @override
  State<ShoppingScreen> createState() => _ShoppingScreenState();
}

class _ShoppingScreenState extends State<ShoppingScreen> {
  @override
  void initState() {
    context.read<AllAddressByMembershipBloc>().add(
      FetchAllAddressByMembershipEvent(memberShipId: "1004"),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "Shipping Addresses",
          style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600),
        ),
        actions: [_notificationButton()],
      ),
      body:
          BlocBuilder<AllAddressByMembershipBloc, AllAddressByMembershipState>(
            builder: (context, state) {
              if (state is AllAddressByMembershipLoading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is AllAddressByMembershipFailure) {
                return _errorWidget(state, context);
              } else if (state is AllAddressByMembershipSuccess) {
                return RefreshIndicator(
                  onRefresh: () async {
                    context.read<AllAddressByMembershipBloc>().add(
                      FetchAllAddressByMembershipEvent(memberShipId: "1004"),
                    );
                  },
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: _body(state.allAddress),
                  ),
                );
              }
              return const Center(
                child: Text(
                  "Loading addresses...",
                  style: TextStyle(color: Colors.black54),
                ),
              );
            },
          ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Navigate to add new address screen
        },
        icon: const Icon(Icons.add),
        label: const Text("Add Address"),
      ),
    );
  }

  Widget _body(List<MemberShippingAddressModel?>? allAddress) {
    if (allAddress == null || allAddress.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.location_off, size: 80, color: Colors.grey.shade400),
            const SizedBox(height: 16),
            Text(
              "No addresses found",
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey.shade600,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "Add your first shipping address",
              style: TextStyle(fontSize: 14, color: Colors.grey.shade500),
            ),
          ],
        ),
      );
    }

    return Column(
      children: [
        ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: allAddress.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            final address = allAddress[index];
            if (address == null) return const SizedBox.shrink();

            return _addressCard(address: address, context: context);
          },
        ),
        const SizedBox(height: 60),
      ],
    );
  }

  Widget _addressCard({
    MemberShippingAddressModel? address,
    required BuildContext context,
  }) {
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
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            // Handle address selection
          },
          borderRadius: BorderRadius.circular(16),
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
                      child: Icon(
                        Icons.location_on,
                        color: Colors.blue,
                        size: 24,
                      ),
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
                            Icon(
                              Icons.check_circle,
                              size: 14,
                              color: Colors.green,
                            ),
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
                _addressDetailRow(
                  Icons.mail_outline,
                  address?.zipCode ?? 'N/A',
                ),
                const SizedBox(height: 8),
                _addressDetailRow(
                  Icons.phone_outlined,
                  "${address?.phoneCode ?? ''} ${address?.mobileNo ?? ''}",
                ),
                const SizedBox(height: 16),
                const Divider(height: 1),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: TextButton.icon(
                        onPressed: () {
                          // Edit address
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
                          // Delete address
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
          "Are you sure you want to delete this address?\n\n${address?.addressLine1}",
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Cancel"),
          ),
          TextButton(
            onPressed: () {
              // Delete address logic
              Navigator.pop(context);
            },
            style: TextButton.styleFrom(foregroundColor: Colors.red),
            child: const Text("Delete"),
          ),
        ],
      ),
    );
  }

  Center _errorWidget(
    AllAddressByMembershipFailure state,
    BuildContext context,
  ) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.error_outline, size: 64, color: Colors.red.shade300),
            const SizedBox(height: 16),
            Text(
              "Oops! Something went wrong",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.grey.shade800,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "${state.message}",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: () {
                context.read<AllAddressByMembershipBloc>().add(
                  FetchAllAddressByMembershipEvent(memberShipId: "1004"),
                );
              },
              icon: const Icon(Icons.refresh),
              label: const Text("Try Again"),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Stack _notificationButton() {
    return Stack(
      children: [
        Positioned(
          right: 10,
          top: 10,
          child: Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 2),
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications_none, color: Colors.black),
        ),
      ],
    );
  }
}
