import 'package:dio/dio.dart';

import '../../helper/constants/const.dart';

class API {
  final Dio _dio = dio;

  API() {
    _dio.options.baseUrl = API_URL;
  }

  Dio get sendRequest => _dio;
}
