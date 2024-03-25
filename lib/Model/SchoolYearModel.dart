class SchoolYearModel {
  List<Data>? data;
  String? status;

  SchoolYearModel({this.data, this.status});

  SchoolYearModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['status'] = this.status;
    return data;
  }
}

class Data {
  String? syId;
  String? syName;
  String? syDescription;
  String? syStudentsNum;
  String? syState;
  String? addByUser;
  String? addDate;
  String? updateByUser;
  String? updateDate;
  String? lastEditDate;

  Data(
      {this.syId,
        this.syName,
        this.syDescription,
        this.syStudentsNum,
        this.syState,
        this.addByUser,
        this.addDate,
        this.updateByUser,
        this.updateDate,
        this.lastEditDate});

  Data.fromJson(Map<String, dynamic> json) {
    syId = json['sy_id'];
    syName = json['sy_name'];
    syDescription = json['sy_description'];
    syStudentsNum = json['sy_students_num'];
    syState = json['sy_state'];
    addByUser = json['add_by_user'];
    addDate = json['add_date'];
    updateByUser = json['update_by_user'];
    updateDate = json['update_date'];
    lastEditDate = json['last_edit_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sy_id'] = this.syId;
    data['sy_name'] = this.syName;
    data['sy_description'] = this.syDescription;
    data['sy_students_num'] = this.syStudentsNum;
    data['sy_state'] = this.syState;
    data['add_by_user'] = this.addByUser;
    data['add_date'] = this.addDate;
    data['update_by_user'] = this.updateByUser;
    data['update_date'] = this.updateDate;
    data['last_edit_date'] = this.lastEditDate;
    return data;
  }
}
