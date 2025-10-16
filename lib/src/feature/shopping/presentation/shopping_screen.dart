import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shipping_address/src/feature/shopping/bloc/all_address_by_membership/all_address_by_membership_bloc.dart';
import 'package:shipping_address/src/feature/shopping/bloc/delete_address_bloc/delete_address_bloc.dart';
import 'package:shipping_address/src/feature/shopping/presentation/widgets/address_tile_widget.dart';

import '../../../app_config/app_routes.dart';
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
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: _appbar(),
      body: BlocListener<DeleteAddressBloc, DeleteAddressState>(
        listener: (context, state) {
          if (state is DeleteAddressFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Something went wrong")),
            );
          } else if (state is DeleteAddressSuccess) {
            context.read<AllAddressByMembershipBloc>().add(
              FetchAllAddressByMembershipEvent(memberShipId: "1004"),
            );
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Address deleted successfully")),
            );
          } else if (state is DeleteAddressLoading) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Deleting address...")),
            );
          }
        },
        child:
            BlocBuilder<
              AllAddressByMembershipBloc,
              AllAddressByMembershipState
            >(
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
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          context.pushNamed(AppRoutesNames.addAddress);
        },
        backgroundColor: theme.colorScheme.primary,
        icon: Icon(Icons.add, color: theme.colorScheme.onPrimary),
        label: Text(
          "Add Address",
          style: TextStyle(color: theme.colorScheme.onPrimary),
        ),
      ),
    );
  }

  AppBar _appbar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      title: const Text(
        "Shipping Addresses",
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
      ),
      actions: [_notificationButton()],
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

            return AddressTileWidget(address: address);
          },
        ),
        const SizedBox(height: 60),
      ],
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
