// ignore_for_file: unnecessary_this

import 'package:flutter_application_11/enum/city_status.dart';
import 'package:flutter_application_11/model/city_model.dart';

class CityStates {
  CityStates({
    this.status,
    this.data = const <CityListModel>[],
  });

  Status? status;
  List<CityListModel> data;

  CityStates copyWith({Status? status, List<CityListModel>? data}) {
    return CityStates(
      status: status ?? this.status,
      data: data ?? this.data,
    );
  }
}
