part of 'country_bloc.dart';

sealed class CountryState extends Equatable {
  const CountryState();

  @override
  List<Object?> get props => [];
}

final class CountryInitial extends CountryState {}

final class CountryLoading extends CountryState {}

final class CountrySuccess extends CountryState {
  final CountryResponseModel? countries;

  const CountrySuccess(this.countries);

  @override
  List<Object?> get props => [countries];
}

final class CountryFailure extends CountryState {
  final String? message;

  const CountryFailure(this.message);

  @override
  List<Object?> get props => [message];
}
