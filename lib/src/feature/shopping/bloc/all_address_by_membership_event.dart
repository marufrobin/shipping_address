part of 'all_address_by_membership_bloc.dart';

sealed class AllAddressByMembershipEvent extends Equatable {
  const AllAddressByMembershipEvent();

  @override
  List<Object?> get props => [];
}

final class FetchAllAddressByMembershipEvent
    extends AllAddressByMembershipEvent {
  final String? memberShipId;

  const FetchAllAddressByMembershipEvent({this.memberShipId});

  @override
  List<Object?> get props => [memberShipId];
}
