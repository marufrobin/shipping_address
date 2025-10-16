import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:shipping_address/src/model/country_response_model.dart';

import '../../data/repository/country_repository.dart';

part 'country_event.dart';
part 'country_state.dart';

class CountryBloc extends Bloc<CountryEvent, CountryState> {
  final CountryRepository repository;

  CountryBloc(this.repository) : super(CountryInitial()) {
    on<CountryEvent>(_fetchCountries);
  }

  _fetchCountries(CountryEvent event, Emitter<CountryState> emit) async {
    try {
      emit(CountryLoading());

      final countries = await repository.getCountries();
      print(countries);
      emit(CountrySuccess(countries));
    } catch (e) {
      emit(CountryFailure(e.toString()));
    }
  }
}
