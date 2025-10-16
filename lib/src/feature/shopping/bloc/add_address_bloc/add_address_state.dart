part of 'add_address_bloc.dart';

sealed class AddAddressState extends Equatable {
  const AddAddressState();
}

final class AddAddressInitial extends AddAddressState {
  @override
  List<Object> get props => [];
}
