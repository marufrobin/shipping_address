import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../data/repository/add_address_repository.dart';

part 'add_address_event.dart';
part 'add_address_state.dart';

class AddAddressBloc extends Bloc<AddAddressEvent, AddAddressState> {
  final AddAddressRepository repository;

  AddAddressBloc(this.repository) : super(AddAddressInitial()) {
    on<AddNewAddressEvent>(_onSubmitAddress);
  }

  _onSubmitAddress(
    AddNewAddressEvent event,
    Emitter<AddAddressState> emit,
  ) async {
    try {
      emit(AddAddressLoading());

      final result = await repository.addAddress(
        memberShippingAddressId: 0,
        memberId: 1004,
        firstName: event.firstName,
        lastName: event.lastName,
        email: event.email,
        mobileNo: event.mobileNo,
        phoneCode: event.phoneCode,
        addressLine1: event.addressLine1,
        addressLine2: event.addressLine2,
        cityId: event.cityId,
        countryId: event.countryId,
        zipCode: event.zipCode,
        isDefault: event.isDefault,
      );

      final message = result['message'] ?? 'Unknown response.';
      final success = result['success'] == true;

      if (success) {
        emit(AddAddressSuccess(message, id: result["id"]));
      } else {
        emit(AddAddressFailure(message));
      }
    } catch (e) {
      emit(AddAddressFailure(e.toString()));
    }
  }
}
