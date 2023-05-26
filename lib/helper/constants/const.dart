// ignore_for_file: constant_identifier_names

import 'package:dio/dio.dart';

final dio = Dio();
const String ERROR_Text = "Error occured while loading data";

const String API_URL = 'https://fluttertest.q3logics.com/api/';
const String GET_CITIES = 'getCities?device_id=aa1b0a9bab56fab2&';
const String TOKEN = 'token=dd74656b19e473d7039985f3a6ac8520';
const String COUNRTY_ID = '&lang_id=1&country_id=189';

const String GET_TOKEN_URL = 'trial?device_id=123456&token=?&lang_id=1';
