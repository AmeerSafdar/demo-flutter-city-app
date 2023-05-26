// ignore_for_file: unnecessary_this, prefer_collection_literals

class CityListModel {
  int? id;
  String? name;
  int? countryId;
  int? stateId;

  CityListModel(
      {required this.id,
      required this.name,
      required this.countryId,
      required this.stateId});

  CityListModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    countryId = json['country_id'];
    stateId = json['state_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['country_id'] = this.countryId;
    data['state_id'] = this.stateId;
    return data;
  }
}
