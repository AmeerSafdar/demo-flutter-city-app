import 'package:flutter/material.dart';
import '../bloc/city_events.dart';
import 'widgets/circle_progress_indicator.dart';
import 'widgets/city_list_widget.dart';
import 'package:flutter_application_11/bloc/city_bloc.dart';
import 'package:flutter_application_11/bloc/city_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CityList extends StatefulWidget {
  const CityList({super.key});

  @override
  State<CityList> createState() => _CityListState();
}

class _CityListState extends State<CityList> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<CityBloc>(context).add(GetCities());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("City List"),
        centerTitle: true,
      ),
      body: BlocBuilder<CityBloc, CityStates>(
        builder: (context, state) {
          return state.data.isEmpty
              ? const CircleProgressBar()
              : CityListviewWidget(
                  citiesList: state.data,
                );
        },
      ),
    );
  }
}
