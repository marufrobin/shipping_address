part of 'city_bloc.dart';

sealed class CityState extends Equatable {
  const CityState();

  @override
  List<Object?> get props => [];
}

final class CityInitial extends CityState {}

final class CityLoading extends CityState {}

final class CitySuccess extends CityState {
  final List<CityModel?>? cities;

  const CitySuccess(this.cities);

  @override
  List<Object?> get props => [cities];
}

final class CityFailure extends CityState {
  final String? message;

  const CityFailure(this.message);

  @override
  List<Object?> get props => [message];
}
