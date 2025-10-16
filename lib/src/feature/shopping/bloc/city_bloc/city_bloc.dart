import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:shipping_address/src/feature/shopping/data/repository/city_repository.dart';
import 'package:shipping_address/src/model/city_response_model.dart';

part 'city_event.dart';
part 'city_state.dart';

class CityBloc extends Bloc<CityEvent, CityState> {
  final CityRepository repository;

  CityBloc(this.repository) : super(CityInitial()) {
    on<FetchedCitiesEvent>(_onFetchedCities);
  }

  _onFetchedCities(FetchedCitiesEvent event, Emitter<CityState> emit) async {
    try {
      emit(CityLoading());
      final cities = await repository.getCities();
      log(name: "cities", cities.toString());
      emit(CitySuccess(cities));
    } catch (e) {
      emit(CityFailure(e.toString()));
    }
  }
}
