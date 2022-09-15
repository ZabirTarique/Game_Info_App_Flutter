class Year {
  int? year;
  int? count;
  bool? nofollow;

  Year({this.year, this.count, this.nofollow});

  Year.fromJson(Map<String, dynamic> json) {
    year = json['year'];
    count = json['count'];
    nofollow = json['nofollow'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['year'] = this.year;
    data['count'] = this.count;
    data['nofollow'] = this.nofollow;
    return data;
  }
}