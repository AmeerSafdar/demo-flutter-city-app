// ignore_for_file: unused_field, prefer_final_fields, unused_local_variable, unnecessary_brace_in_string_interps, no_leading_underscores_for_local_identifiers, avoid_print

import 'package:dio/dio.dart';
import 'package:flutter_application_11/model/city_model.dart';

import '../helper/constants/const.dart';
import 'api/api.dart';

class CityLists {
  API _api = API();
  List<CityListModel>? _cityAPI;

  Future<List<CityListModel>?> fetchCityList() async {
    try {
      Response response = await _api.sendRequest.get(GET_TOKEN_URL);
      var tokens = response.data['data'];

      Response res = await _api.sendRequest
          .get('${GET_CITIES}token=${tokens}${COUNRTY_ID}');

      if (response.statusCode == 200 && res.statusCode == 200) {
        List<dynamic> city = res.data['data'];
        _cityAPI = city.map((city) => CityListModel.fromJson(city)).toList();
      } else {
        print('Error: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
    }
    return _cityAPI;
  }
}
