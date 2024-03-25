
class UnitsAPI {
  String? uId;
  String? uName;
  String? uSchoolYearId;
  String? uDescription;
  String? uPhoto;
  String? uLessonsCount;
  String? uState;
  String? syName;
  String? syDescription;
  String? addByUser;
  String? addDate;
  String? updateByUser;
  String? updateDate;
  String? lastEditDate;

  UnitsAPI(
      {this.uId,
        this.uName,
        this.uSchoolYearId,
        this.uDescription,
        this.uPhoto,
        this.uLessonsCount,
        this.uState,
        this.syName,
        this.syDescription,
        this.addByUser,
        this.addDate,
        this.updateByUser,
        this.updateDate,
        this.lastEditDate});

  UnitsAPI.fromJson(Map<String, dynamic> json) {
    uId = json['u_id'];
    uName = json['u_name'];
    uSchoolYearId = json['u_school_year_id'];
    uDescription = json['u_description'];
    uPhoto = json['u_photo'];
    uLessonsCount = json['u_lessons_count'];
    uState = json['u_state'];
    syName = json['sy_name'];
    syDescription = json['sy_description'];
    addByUser = json['add_by_user'];
    addDate = json['add_date'];
    updateByUser = json['update_by_user'];
    updateDate = json['update_date'];
    lastEditDate = json['last_edit_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> UnitsAPI = new Map<String, dynamic>();
    UnitsAPI['u_id'] = this.uId;
    UnitsAPI['u_name'] = this.uName;
    UnitsAPI['u_school_year_id'] = this.uSchoolYearId;
    UnitsAPI['u_description'] = this.uDescription;
    UnitsAPI['u_photo'] = this.uPhoto;
    UnitsAPI['u_lessons_count'] = this.uLessonsCount;
    UnitsAPI['u_state'] = this.uState;
    UnitsAPI['sy_name'] = this.syName;
    UnitsAPI['sy_description'] = this.syDescription;
    UnitsAPI['add_by_user'] = this.addByUser;
    UnitsAPI['add_date'] = this.addDate;
    UnitsAPI['update_by_user'] = this.updateByUser;
    UnitsAPI['update_date'] = this.updateDate;
    UnitsAPI['last_edit_date'] = this.lastEditDate;
    return UnitsAPI;
  }
}
