// ignore_for_file: unused_field

import 'package:flutter_application_11/bloc/city_events.dart';
import 'package:flutter_application_11/bloc/city_states.dart';
import 'package:flutter_application_11/model/city_model.dart';
import 'package:flutter_application_11/repositories/getCityList.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../enum/city_status.dart';

class CityBloc extends Bloc<CityEvents, CityStates> {
  List<CityListModel>? data;
  final CityLists _cityLists = CityLists();
  CityBloc() : super(CityStates()) {
    on<GetCities>(_getCityList);
  }

  void _getCityList(GetCities event, Emitter<CityStates> emit) async {
    try {
      emit(state.copyWith(status: Status.loading));
      data = await _cityLists.fetchCityList();
      emit(state.copyWith(status: Status.success, data: data));
    } catch (e) {
      emit(state.copyWith(status: Status.error));
    }
  }
}
