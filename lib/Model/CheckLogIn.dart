class CheckLogin {
  String? message;
  List<Null>? data;
  int? status;

  CheckLogin({this.message, this.data, this.status});

  CheckLogin.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    if (json['data'] != null) {
      data = <Null>[];
      json['data'].forEach((v) {
        data!.add( Null as Null);
      });
    }
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => toJson()).toList();
    }
    data['status'] = this.status;
    return data;
  }
}
