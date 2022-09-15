import 'Years.dart';

class Filters {
  List<Years>? years;

  Filters({this.years});

  Filters.fromJson(Map<String, dynamic> json) {
    if (json['years'] != null) {
      years = <Years>[];
      json['years'].forEach((v) {
        years!.add(new Years.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.years != null) {
      data['years'] = this.years!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}