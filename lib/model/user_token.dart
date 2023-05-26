// ignore_for_file: unnecessary_this, prefer_collection_literals

class GetUserToken {
  int? status;
  String? data;
  bool? maintenanceStatus;
  String? msg;

  GetUserToken({this.status, this.data, this.maintenanceStatus, this.msg});

  GetUserToken.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = json['data'];
    maintenanceStatus = json['maintenance_status'];
    msg = json['msg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['status'] = this.status;
    data['data'] = this.data;
    data['maintenance_status'] = this.maintenanceStatus;
    data['msg'] = this.msg;
    return data;
  }
}
