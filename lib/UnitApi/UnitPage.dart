class UnitsPage {
  List<UnitsPage>? data;
  String? status;

  UnitsPage({this.data, this.status});

  UnitsPage.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <UnitsPage>[];
      json['data'].forEach((v) {
        data!.add(new UnitsPage.fromJson(v));
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
