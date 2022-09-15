



import 'package:games_info_app/models/Ratings.dart';

class ParentPlatforms {
  Platforms? platform;

  ParentPlatforms({this.platform});

  ParentPlatforms.fromJson(Map<String, dynamic> json) {
    platform = json['platform'] != null
        ? new Platforms.fromJson(json['platform'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.platform != null) {
      data['platform'] = this.platform!.toJson();
    }
    return data;
  }
}