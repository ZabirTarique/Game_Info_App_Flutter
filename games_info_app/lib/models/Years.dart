import 'Year.dart';

class Years {
  int? from;
  int? to;
  String? filter;
  int? decade;
  List<Year>? years;
  bool? nofollow;
  int? count;

  Years(
      {this.from,
        this.to,
        this.filter,
        this.decade,
        this.years,
        this.nofollow,
        this.count});

  Years.fromJson(Map<String, dynamic> json) {
    from = json['from'];
    to = json['to'];
    filter = json['filter'];
    decade = json['decade'];
    if (json['years'] != null) {
      years = <Year>[];
      json['years'].forEach((v) {
        years!.add(new Year.fromJson(v));
      });
    }
    nofollow = json['nofollow'];
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['from'] = this.from;
    data['to'] = this.to;
    data['filter'] = this.filter;
    data['decade'] = this.decade;
    if (this.years != null) {
      data['years'] = this.years!.map((v) => v.toJson()).toList();
    }
    data['nofollow'] = this.nofollow;
    data['count'] = this.count;
    return data;
  }
}