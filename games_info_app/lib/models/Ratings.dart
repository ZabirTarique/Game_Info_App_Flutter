

import 'package:games_info_app/models/Platform.dart';

import 'RequirementsEn.dart';

class Ratings {
  int? id;
  String? title;
  int? count;
  double? percent;

  Ratings({this.id, this.title, this.count, this.percent});

  Ratings.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    count = json['count'];
    percent = json['percent'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['count'] = this.count;
    data['percent'] = this.percent;
    return data;
  }
}

class AddedByStatus {
  int? yet;
  int? owned;
  int? beaten;
  int? toplay;
  int? dropped;
  int? playing;

  AddedByStatus(
      {this.yet,
        this.owned,
        this.beaten,
        this.toplay,
        this.dropped,
        this.playing});

  AddedByStatus.fromJson(Map<String, dynamic> json) {
    yet = json['yet'];
    owned = json['owned'];
    beaten = json['beaten'];
    toplay = json['toplay'];
    dropped = json['dropped'];
    playing = json['playing'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['yet'] = this.yet;
    data['owned'] = this.owned;
    data['beaten'] = this.beaten;
    data['toplay'] = this.toplay;
    data['dropped'] = this.dropped;
    data['playing'] = this.playing;
    return data;
  }
}

class Platforms {
  Platform? platform;
  String? releasedAt;
  RequirementsEn? requirementsEn;
  RequirementsEn? requirementsRu;

  Platforms(
      {this.platform,
        this.releasedAt,
        this.requirementsEn,
        this.requirementsRu});

  Platforms.fromJson(Map<String, dynamic> json) {
    platform = json['platform'] != null
        ? new Platform.fromJson(json['platform'])
        : null;
    releasedAt = json['released_at'];
    requirementsEn = json['requirements_en'] != null
        ? new RequirementsEn.fromJson(json['requirements_en'])
        : null;
    requirementsRu = json['requirements_ru'] != null
        ? new RequirementsEn.fromJson(json['requirements_ru'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.platform != null) {
      data['platform'] = this.platform!.toJson();
    }
    data['released_at'] = this.releasedAt;
    if (this.requirementsEn != null) {
      data['requirements_en'] = this.requirementsEn!.toJson();
    }
    if (this.requirementsRu != null) {
      data['requirements_ru'] = this.requirementsRu!.toJson();
    }
    return data;
  }
}