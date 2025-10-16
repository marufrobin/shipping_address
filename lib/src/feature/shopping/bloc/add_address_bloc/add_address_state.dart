part of 'add_address_bloc.dart';

sealed class AddAddressState extends Equatable {
  const AddAddressState();

  @override
  List<Object?> get props => [];
}

final class AddAddressInitial extends AddAddressState {}

final class AddAddressLoading extends AddAddressState {}

final class AddAddressSuccess extends AddAddressState {
  final String message;
  final int? id;

  const AddAddressSuccess(this.message, {this.id});

  @override
  List<Object?> get props => [message, id];
}

final class AddAddressFailure extends AddAddressState {
  final String? message;

  const AddAddressFailure(this.message);

  @override
  List<Object?> get props => [message];
}
