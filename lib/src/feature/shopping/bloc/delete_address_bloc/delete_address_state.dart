part of 'delete_address_bloc.dart';

sealed class DeleteAddressState extends Equatable {
  const DeleteAddressState();

  @override
  List<Object?> get props => [];
}

final class DeleteAddressInitial extends DeleteAddressState {}

final class DeleteAddressLoading extends DeleteAddressState {}

final class DeleteAddressSuccess extends DeleteAddressState {}

final class DeleteAddressFailure extends DeleteAddressState {
  final String message;

  const DeleteAddressFailure(this.message);

  @override
  List<Object?> get props => [message];
}
