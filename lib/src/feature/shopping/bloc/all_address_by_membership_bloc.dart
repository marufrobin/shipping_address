import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:shipping_address/src/feature/shopping/data/all_address_by_membership_repository.dart';

part 'all_address_by_membership_event.dart';
part 'all_address_by_membership_state.dart';

class AllAddressByMembershipBloc extends Bloc<AllAddressByMembershipEvent, AllAddressByMembershipState> {
  final AllAddressByMembershipRepository repository;

  AllAddressByMembershipBloc(this.repository) : super(AllAddressByMembershipInitial()) {
    on<AllAddressByMembershipEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
