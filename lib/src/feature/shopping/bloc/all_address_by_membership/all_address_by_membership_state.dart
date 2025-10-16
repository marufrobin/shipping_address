part of 'all_address_by_membership_bloc.dart';

sealed class AllAddressByMembershipState extends Equatable {
  const AllAddressByMembershipState();

  @override
  List<Object?> get props => [];
}

final class AllAddressByMembershipInitial extends AllAddressByMembershipState {}

final class AllAddressByMembershipLoading extends AllAddressByMembershipState {}

final class AllAddressByMembershipSuccess extends AllAddressByMembershipState {
  final List<MemberShippingAddressModel?>? allAddress;

  const AllAddressByMembershipSuccess({this.allAddress});

  @override
  List<Object?> get props => [allAddress];
}

final class AllAddressByMembershipFailure extends AllAddressByMembershipState {
  final String? message;

  const AllAddressByMembershipFailure({this.message});
}
