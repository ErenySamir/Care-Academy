class profilemodel {
  Info? info;
  List<Item>? item;
  profilemodel({this.info, this.item});
  profilemodel.fromJson(Map<String, dynamic> json) {
    info = json['info'] != null ? new Info.fromJson(json['info']) : null;
    if (json['item'] != null) {
      item = <Item>[];
      json['item'].forEach((v) {
        item!.add(new Item.fromJson(v));
      });
    }
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.info != null) {
      data['info'] = this.info!.toJson();
    }
    if (this.item != null) {
      data['item'] = this.item!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
class Info {
  String? sPostmanId;
  String? name;
  String? schema;
  String? sExporterId;
  Info({this.sPostmanId, this.name, this.schema, this.sExporterId});
  Info.fromJson(Map<String, dynamic> json) {
    sPostmanId = json['_postman_id'];
    name = json['name'];
    schema = json['schema'];
    sExporterId = json['_exporter_id'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_postman_id'] = this.sPostmanId;
    data['name'] = this.name;
    data['schema'] = this.schema;
    data['_exporter_id'] = this.sExporterId;
    return data;
  }
}
class Item {
  String? name;
  Request? request;
  List<Map<String, dynamic>>? response; // Updated type
  Item({this.name, this.request, this.response});
  Item.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    request = json['request'] != null ? Request.fromJson(json['request']) : null;
    if (json['response'] != null) {
      response = <Map<String, dynamic>>[]; // Initialize response
      json['response'].forEach((v) {
        response!.add(v as Map<String, dynamic>); // Add map directly
      });
    }
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    if (request != null) {
      data['request'] = request!.toJson();
    }
    if (response != null) {
      data['response'] = response;
    }
    return data;
  }
}
class Request {
  String? method;
  List<String>? header; // Updated type
  Body? body;
  Url? url;
  Request({this.method, this.header, this.body, this.url});
  Request.fromJson(Map<String, dynamic> json) {
    method = json['method'];
    if (json['header'] != null) {
      header = <String>[]; // Updated type
      json['header'].forEach((v) {
        header!.add(v as String); // Add string directly
      });
    }
    body = json['body'] != null ? Body.fromJson(json['body']) : null;
    url = json['url'] != null ? Url.fromJson(json['url']) : null;
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['method'] = method;
    if (header != null) {
      data['header'] = header;
    }
    if (body != null) {
      data['body'] = body!.toJson();
    }
    if (url != null) {
      data['url'] = url!.toJson();
    }
    return data;
  }
}
class Body {
  String? mode;
  String? raw;
  Options? options;
  List<Formdata>? formdata;
  Body({this.mode, this.raw, this.options, this.formdata});
  Body.fromJson(Map<String, dynamic> json) {
    mode = json['mode'];
    raw = json['raw'];
    options =
    json['options'] != null ? new Options.fromJson(json['options']) : null;
    if (json['formdata'] != null) {
      formdata = <Formdata>[];
      json['formdata'].forEach((v) {
        formdata!.add(new Formdata.fromJson(v));
      });
    }
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['mode'] = this.mode;
    data['raw'] = this.raw;
    if (this.options != null) {
      data['options'] = this.options!.toJson();
    }
    if (this.formdata != null) {
      data['formdata'] = this.formdata!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
class Options {
  Raw? raw;
  Options({this.raw});
  Options.fromJson(Map<String, dynamic> json) {
    raw = json['raw'] != null ? new Raw.fromJson(json['raw']) : null;
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.raw != null) {
      data['raw'] = this.raw!.toJson();
    }
    return data;
  }
}
class Raw {
  String? language;
  Raw({this.language});
  Raw.fromJson(Map<String, dynamic> json) {
    language = json['language'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['language'] = this.language;
    return data;
  }
}
class Formdata {
  String? key;
  String? value;
  String? type;
  String? src;
  Formdata({this.key, this.value, this.type, this.src});
  Formdata.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    value = json['value'];
    type = json['type'];
    src = json['src'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['key'] = this.key;
    data['value'] = this.value;
    data['type'] = this.type;
    data['src'] = this.src;
    return data;
  }
}
class Url {
  String? raw;
  String? protocol;
  List<String>? host;
  List<String>? path;
  List<Query>? query;
  Url({this.raw, this.protocol, this.host, this.path, this.query});
  Url.fromJson(Map<String, dynamic> json) {
    raw = json['raw'];
    protocol = json['protocol'];
    host = json['host'].cast<String>();
    path = json['path'].cast<String>();
    if (json['query'] != null) {
      query = <Query>[];
      json['query'].forEach((v) {
        query!.add(new Query.fromJson(v));
      });
    }
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['raw'] = this.raw;
    data['protocol'] = this.protocol;
    data['host'] = this.host;
    data['path'] = this.path;
    if (this.query != null) {
      data['query'] = this.query!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
class Query {
  String? key;
  String? value;
  Query({this.key, this.value});
  Query.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    value = json['value'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['key'] = this.key;
    data['value'] = this.value;
    return data;
  }
}