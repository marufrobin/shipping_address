part of 'add_address_bloc.dart';

sealed class AddAddressEvent extends Equatable {
  const AddAddressEvent();

  @override
  List<Object?> get props => [];
}

final class AddNewAddressEvent extends AddAddressEvent {
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

  const AddNewAddressEvent({
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

  @override
  List<Object?> get props => [
    memberShippingAddressId,
    memberId,
    firstName,
    lastName,
    email,
    mobileNo,
    phoneCode,
    addressLine1,
    addressLine2,
    cityId,
    countryId,
    zipCode,
    isDefault,
  ];
}

final class EditAddressEvent extends AddAddressEvent {
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

  const EditAddressEvent({
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

  @override
  List<Object?> get props => [
    memberShippingAddressId,
    memberId,
    firstName,
    lastName,
    email,
    mobileNo,
    phoneCode,
    addressLine1,
    addressLine2,
    cityId,
    countryId,
    zipCode,
    isDefault,
  ];
}
