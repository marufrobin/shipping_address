import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:shipping_address/src/feature/shopping/data/all_address_by_membership_repository.dart';
import 'package:shipping_address/src/model/member_shipping_address_model.dart';

part 'all_address_by_membership_event.dart';
part 'all_address_by_membership_state.dart';

class AllAddressByMembershipBloc
    extends Bloc<AllAddressByMembershipEvent, AllAddressByMembershipState> {
  final AllAddressByMembershipRepository repository;

  AllAddressByMembershipBloc(this.repository)
    : super(AllAddressByMembershipInitial()) {
    on<FetchAllAddressByMembershipEvent>(_fetchAllAddressByMembership);
    // on<FetchAllAddressByMembershipEvent>((event, emit) {
    //
    // },);
  }

  _fetchAllAddressByMembership(
    FetchAllAddressByMembershipEvent event,
    Emitter<AllAddressByMembershipState> emit,
  ) async {
    emit(AllAddressByMembershipLoading());
    try {
      final addresses = await repository.getAllAddress(event.memberShipId);
      log(addresses.toString(), name: "AllAddressByMembershipBloc");
      emit(AllAddressByMembershipSuccess(allAddress: addresses));
    } catch (e) {
      emit(AllAddressByMembershipFailure(message: e.toString()));
    }
  }
}
