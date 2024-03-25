class UpdateSchoolYearModel {
  String? message;
  String? status;

  UpdateSchoolYearModel({this.message, this.status});

  UpdateSchoolYearModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['status'] = this.status;
    return data;
  }
}
