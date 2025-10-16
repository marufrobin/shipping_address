part of 'all_address_by_membership_bloc.dart';

sealed class AllAddressByMembershipState extends Equatable {
  const AllAddressByMembershipState();
}

final class AllAddressByMembershipInitial extends AllAddressByMembershipState {
  @override
  List<Object> get props => [];
}
