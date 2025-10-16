import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:shipping_address/src/feature/shopping/data/repository/delete_address_repository.dart';

part 'delete_address_event.dart';
part 'delete_address_state.dart';

class DeleteAddressBloc extends Bloc<DeleteAddressEvent, DeleteAddressState> {
  final DeleteAddressRepository addressRepository;

  DeleteAddressBloc(this.addressRepository) : super(DeleteAddressInitial()) {
    on<ExecuteDeleteAddressEvent>(_onDeleteAddressEvent);
  }

  Future<void> _onDeleteAddressEvent(
    ExecuteDeleteAddressEvent event,
    Emitter<DeleteAddressState> emit,
  ) async {
    try {
      emit(DeleteAddressLoading());

      final addressId = event.addressId;
      final memberId = event.memberId;

      final result = await addressRepository.deleteAddress(
        addressId: addressId,
        memberId: memberId,
      );

      emit(DeleteAddressSuccess());
    } catch (e) {
      emit(DeleteAddressFailure(e.toString()));
    }
  }
}
