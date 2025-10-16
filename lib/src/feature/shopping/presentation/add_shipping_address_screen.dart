import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shipping_address/src/feature/shopping/bloc/add_address_bloc/add_address_bloc.dart';
import 'package:shipping_address/src/feature/shopping/bloc/all_address_by_membership/all_address_by_membership_bloc.dart';
import 'package:shipping_address/src/feature/shopping/bloc/city_bloc/city_bloc.dart';
import 'package:shipping_address/src/feature/shopping/bloc/country_bloc/country_bloc.dart';
import 'package:shipping_address/src/model/city_response_model.dart';
import 'package:shipping_address/src/model/country_response_model.dart';

class EditShippingAddressPayload {
  final int? memberShippingAddressId;
  final int? memberId;
  final String? firstName;
  final String? lastName;
  final String? email;
  final String? mobileNo;
  final String? phoneCode;
  final String? addressLine1;
  final String? addressLine2;
  final int? cityId;
  final int? countryId;
  final String? zipCode;
  final bool? isDefault;

  EditShippingAddressPayload({
    this.memberShippingAddressId,
    this.memberId,
    this.firstName,
    this.lastName,
    this.email,
    this.mobileNo,
    this.phoneCode,
    this.addressLine1,
    this.addressLine2,
    this.cityId,
    this.countryId,
    this.zipCode,
    this.isDefault,
  });
}

class AddShippingAddressScreen extends StatefulWidget {
  final EditShippingAddressPayload? payload;

  const AddShippingAddressScreen({super.key, required this.payload});

  @override
  State<AddShippingAddressScreen> createState() =>
      _AddShippingAddressScreenState();
}

class _AddShippingAddressScreenState extends State<AddShippingAddressScreen> {
  final _formKey = GlobalKey<FormState>();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _streetAddressController = TextEditingController();
  final _buildingNameController = TextEditingController();
  final _postCodeController = TextEditingController();

  String? _selectedCityName;
  CityModel? _selectedCity;
  String? _selectedCountryName;
  CountryModel? _selectedCountry;
  String? _selectedRegionName;
  CountryModel? _selectedRegion;
  bool _useExistingAddress = true;

  @override
  void initState() {
    context.read<CountryBloc>().add(FetchCountryEvent());
    context.read<CityBloc>().add(FetchedCitiesEvent());
    _editAddress();
    super.initState();
  }

  _editAddress() {
    if (widget.payload != null) {
      final countryState = context.read<CountryBloc>().state;
      final cityState = context.read<CityBloc>().state;

      _firstNameController.text = widget.payload!.firstName ?? "";
      _lastNameController.text = widget.payload!.lastName ?? "";
      _emailController.text = widget.payload!.email ?? "";
      _phoneController.text = widget.payload!.mobileNo ?? "";
      _streetAddressController.text = widget.payload!.addressLine1 ?? "";
      _buildingNameController.text = widget.payload!.addressLine2 ?? "";
      _postCodeController.text = widget.payload!.zipCode ?? "";
      // _selectedCityName = cityState is CitySuccess
      //     ? cityState.cities
      //           ?.firstWhere(
      //             (element) => element?.cityId == widget.payload!.cityId,
      //             orElse: () => null,
      //           )
      //           ?.countryName
      //     : "";
      // _selectedCountryName = countryState is CountrySuccess
      //     ? countryState.countries?.data
      //           ?.firstWhere(
      //             (element) => element?.countryId == widget.payload!.countryId,
      //             orElse: () => null,
      //           )
      //           ?.countryName
      //     : "";
    }
  }

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _streetAddressController.dispose();
    _buildingNameController.dispose();
    _postCodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBar(context),
      body: RefreshIndicator(
        onRefresh: () async {
          context.read<CountryBloc>().add(FetchCountryEvent());
          context.read<CityBloc>().add(FetchedCitiesEvent());
          _editAddress();
        },
        child: Column(
          children: [
            _buildProgressIndicator(),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(20),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 16,
                    children: [
                      _buildTextField(
                        label: "First Name:",
                        controller: _firstNameController,
                        hint: "Andru",
                      ),
                      _buildTextField(
                        label: "Last Name:",
                        controller: _lastNameController,
                        hint: "Thomas",
                      ),
                      _buildTextField(
                        label: "Email Address:",
                        controller: _emailController,
                        hint: "info@andruthomas@mail.com",
                        keyboardType: TextInputType.emailAddress,
                      ),
                      _buildTextField(
                        label: "Phone Number:",
                        controller: _phoneController,
                        hint: "+ 971 055 4836",
                        keyboardType: TextInputType.phone,
                      ),
                      _buildTextField(
                        label: "Street Address:",
                        controller: _streetAddressController,
                        hint: "Write Address",
                      ),
                      _buildTextField(
                        label: "Building Name:",
                        controller: _buildingNameController,
                        hint: "Write Balding Name",
                      ),
                      _cityWidget(),
                      _countryWidget(),
                      _buildAddressTypeSelector(),
                      const SizedBox(height: 6),
                      _buildActionButtons(theme),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _countryWidget() {
    return BlocBuilder<CountryBloc, CountryState>(
      builder: (context, state) {
        if (state is CountryLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is CountryFailure) {
          return Center(child: Text(state.message ?? "Something went wrong"));
        } else if (state is CountrySuccess) {
          final countries =
              state.countries?.data
                  ?.map((e) => e?.countryName ?? "")
                  .toList() ??
              [];

          return Row(
            spacing: 12,
            children: [
              Expanded(
                child: _buildDropdownField(
                  label: "Country:",
                  value: _selectedCountryName,
                  hint: "Select country",
                  items: countries,
                  onChanged: (value) {
                    final selectedCountry = state.countries?.data?.firstWhere(
                      (element) => element?.countryName == value,
                      orElse: () => null,
                    );
                    setState(() => _selectedCountry = selectedCountry);
                  },
                ),
              ),
              Expanded(
                child: _buildDropdownField(
                  label: "Region / State:",
                  value: _selectedRegionName,
                  hint: "Select country",
                  items: countries,
                  onChanged: (value) {
                    final selectedCountry = state.countries?.data?.firstWhere(
                      (element) => element?.countryName == value,
                      orElse: () => null,
                    );
                    setState(() => _selectedRegion = selectedCountry);
                  },
                ),
              ),
            ],
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }

  Row _cityWidget() {
    return Row(
      spacing: 12,
      children: [
        BlocBuilder<CityBloc, CityState>(
          builder: (context, state) {
            if (state is CityLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is CityFailure) {
              return Center(
                child: Text(state.message ?? "Something went wrong"),
              );
            } else if (state is CitySuccess) {
              final cities =
                  state.cities?.map((e) => e?.cityName ?? "").toList() ?? [];
              return Expanded(
                child: _buildDropdownField(
                  label: "City:",
                  value: _selectedCityName,
                  hint: "Select city",
                  items: cities,
                  onChanged: (value) {
                    final selectedCity = state.cities?.firstWhere(
                      (element) => element?.cityName == value,
                      orElse: () => null,
                    );
                    setState(() => _selectedCity = selectedCity);
                  },
                ),
              );
            } else {
              return const SizedBox.shrink();
            }
          },
        ),
        Expanded(
          child: _buildTextField(
            label: "Post Code:",
            controller: _postCodeController,
            hint: "Select city",
            keyboardType: TextInputType.number,
          ),
        ),
      ],
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: Center(
        child: IconButton(
          style: IconButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.all(Radius.circular(10)),
              side: BorderSide(width: 0.4, color: Colors.grey.shade500),
            ),
          ),
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => context.pop(),
        ),
      ),
      title: const Text(
        "Shipping Address",
        style: TextStyle(color: Colors.black),
      ),
      centerTitle: true,
      actions: [_notificationIcon()],
    );
  }

  Stack _notificationIcon() {
    return Stack(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications_none, color: Colors.black),
        ),
        Positioned(
          right: 10,
          top: 10,
          child: Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 1.5),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildProgressIndicator() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Row(
        children: [
          _buildProgressStep(
            icon: Icons.shopping_cart_outlined,
            label: "Shopping Cart",
            isCompleted: true,
            isActive: false,
          ),
          _buildProgressLine(isCompleted: true),
          _buildProgressStep(
            icon: Icons.location_on_outlined,
            label: "Shipping Address",
            isCompleted: false,
            isActive: true,
          ),
          _buildProgressLine(isCompleted: false),
          _buildProgressStep(
            icon: Icons.money_outlined,
            label: "Payment",
            isCompleted: false,
            isActive: false,
          ),
        ],
      ),
    );
  }

  Widget _buildProgressStep({
    required IconData icon,
    required String label,
    required bool isCompleted,
    required bool isActive,
  }) {
    return Column(
      children: [
        Container(
          width: 56,
          height: 56,
          decoration: BoxDecoration(
            color: isCompleted || isActive
                ? Theme.of(context).primaryColor
                : Colors.grey.shade300,
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: Colors.white, size: 28),
        ),
        const SizedBox(height: 6),
        SizedBox(
          width: 80,
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 11,
              color: isActive ? Colors.black : Colors.grey.shade600,
              fontWeight: isActive ? FontWeight.w600 : FontWeight.normal,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildProgressLine({required bool isCompleted}) {
    return Expanded(
      child: Container(
        height: 2,
        margin: const EdgeInsets.only(bottom: 30),
        color: isCompleted
            ? Theme.of(context).primaryColor
            : Colors.grey.shade300,
      ),
    );
  }

  Widget _buildTextField({
    required String label,
    required TextEditingController controller,
    required String hint,
    TextInputType? keyboardType,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(color: Colors.grey.shade400, fontSize: 14),
            filled: true,
            fillColor: Colors.grey.shade50,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.grey.shade300),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.grey.shade300),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Color(0xFFB8926C), width: 2),
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 14,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDropdownField({
    required String label,
    required String? value,
    required String hint,
    required List<String> items,
    required Function(String?) onChanged,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 8),
        DropdownButtonFormField<String>(
          initialValue: value,
          isExpanded: true,
          hint: Text(
            hint,
            style: TextStyle(color: Colors.grey.shade400, fontSize: 14),
          ),
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey.shade50,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.grey.shade300),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.grey.shade300),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: Theme.of(context).primaryColor,
                width: 2,
              ),
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 14,
            ),
          ),
          items: items.map((String item) {
            return DropdownMenuItem<String>(value: item, child: Text(item));
          }).toList(),
          onChanged: onChanged,
        ),
      ],
    );
  }

  Widget _buildAddressTypeSelector() {
    return Row(
      spacing: 10,
      children: [
        Expanded(
          child: _buildRadioOption(
            icon: Icons.radio_button_checked,
            label: "Use An Existing Address",
            isSelected: _useExistingAddress,
            onTap: () {
              setState(() {
                _useExistingAddress = true;
              });
            },
          ),
        ),
        Expanded(
          child: _buildRadioOption(
            icon: Icons.radio_button_unchecked,
            label: "Use A New Address",
            isSelected: !_useExistingAddress,
            onTap: () {
              setState(() {
                _useExistingAddress = false;
              });
            },
          ),
        ),
      ],
    );
  }

  Widget _buildRadioOption({
    required IconData icon,
    required String label,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          spacing: 8,
          children: [
            Icon(
              isSelected
                  ? Icons.radio_button_checked
                  : Icons.radio_button_unchecked,
              color: isSelected
                  ? Theme.of(context).primaryColor
                  : Colors.grey.shade400,
              size: 20,
            ),
            Expanded(
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 13,
                  color: isSelected ? Colors.black87 : Colors.grey.shade600,
                  fontWeight: isSelected ? FontWeight.w500 : FontWeight.normal,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActionButtons(ThemeData theme) {
    return Row(
      children: [
        Expanded(
          child: OutlinedButton(
            onPressed: () => Navigator.pop(context),
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 16),
              side: BorderSide(color: Colors.grey.shade400),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: const Text(
              "Back",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: BlocConsumer<AddAddressBloc, AddAddressState>(
            listener: (context, state) {
              if (state is AddAddressSuccess) {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text(state.message)));
                context.read<AllAddressByMembershipBloc>().add(
                  FetchAllAddressByMembershipEvent(memberShipId: "1004"),
                );
                context.pop();
              } else if (state is AddAddressFailure) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(state.message ?? "Something went wrong"),
                  ),
                );
              }
            },
            builder: (context, state) {
              return ElevatedButton(
                onPressed: state is AddAddressLoading
                    ? null
                    : () {
                        if (_formKey.currentState?.validate() ?? false) {
                          context.read<AddAddressBloc>().add(
                            AddNewAddressEvent(
                              memberShippingAddressId: 0,
                              memberId: 1004,
                              firstName: _firstNameController.text.trim(),
                              lastName: _lastNameController.text.trim(),
                              email: _emailController.text.trim(),
                              phoneCode: "+971",
                              isDefault: true,
                              mobileNo: _phoneController.text.trim(),
                              addressLine1: _streetAddressController.text
                                  .trim(),
                              addressLine2: _buildingNameController.text.trim(),
                              zipCode: _postCodeController.text.trim(),
                              cityId: _selectedCity?.cityId,
                              countryId: _selectedCountry?.countryId,
                              // : _selectedRegion ?? "",
                            ),
                          );
                        }
                      },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).primaryColor,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  elevation: 0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 8,
                  children: [
                    if (state is AddAddressLoading)
                      const CircularProgressIndicator(
                        color: Colors.white,
                        constraints: BoxConstraints(
                          minHeight: 16,
                          minWidth: 16,
                        ),
                        strokeWidth: 2,
                      ),
                    const Text(
                      "Continue",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
