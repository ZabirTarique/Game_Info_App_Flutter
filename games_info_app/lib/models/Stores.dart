import 'Store.dart';

class Stores {
  int? id;
  Store? store;

  Stores({this.id, this.store});

  Stores.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    store = json['store'] != null ? new Store.fromJson(json['store']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.store != null) {
      data['store'] = this.store!.toJson();
    }
    return data;
  }
}