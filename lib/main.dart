import 'package:flutter/material.dart';
import 'package:flutter_application_11/presentation_layer/city_list_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/city_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CityBloc>(create: ((context) => CityBloc())),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const CityList(),
      ),
    );
  }
}