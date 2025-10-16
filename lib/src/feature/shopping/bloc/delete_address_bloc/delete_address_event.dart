part of 'delete_address_bloc.dart';

sealed class DeleteAddressEvent extends Equatable {
  const DeleteAddressEvent();

  @override
  List<Object?> get props => [];
}

final class ExecuteDeleteAddressEvent extends DeleteAddressEvent {
  final int? addressId;
  final int? memberId;

  const ExecuteDeleteAddressEvent({this.addressId, this.memberId});

  @override
  List<Object?> get props => [addressId, memberId];
}
