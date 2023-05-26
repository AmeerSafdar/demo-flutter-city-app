// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../model/city_model.dart';

class CityListviewWidget extends StatelessWidget {
  List<CityListModel>? citiesList;
  CityListviewWidget({super.key, this.citiesList});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: citiesList!.length,
        itemBuilder: ((context, index) {
          var data = citiesList![index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 6),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(data.name!),
              ),
            ),
          );
        }));
  }
}
