import 'Filters.dart';
import 'Results.dart';

class GameListResponse {
  int? count;
  String? next;
  String? previous;
  List<Results>? results;
  String? seoTitle;
  String? seoDescription;
  String? seoKeywords;
  String? seoH1;
  bool? noindex;
  bool? nofollow;
  String? description;
  Filters? filters;
  List<String>? nofollowCollections;

  GameListResponse(
      {this.count,
        this.next,
        this.previous,
        this.results,
        this.seoTitle,
        this.seoDescription,
        this.seoKeywords,
        this.seoH1,
        this.noindex,
        this.nofollow,
        this.description,
        this.filters,
        this.nofollowCollections});

  GameListResponse.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    next = json['next'];
    previous = json['previous'];
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results!.add(new Results.fromJson(v));
      });
    }
    seoTitle = json['seo_title'];
    seoDescription = json['seo_description'];
    seoKeywords = json['seo_keywords'];
    seoH1 = json['seo_h1'];
    noindex = json['noindex'];
    nofollow = json['nofollow'];
    description = json['description'];
    filters =
    json['filters'] != null ? new Filters.fromJson(json['filters']) : null;
    nofollowCollections = json['nofollow_collections'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['count'] = this.count;
    data['next'] = this.next;
    data['previous'] = this.previous;
    if (this.results != null) {
      data['results'] = this.results!.map((v) => v.toJson()).toList();
    }
    data['seo_title'] = this.seoTitle;
    data['seo_description'] = this.seoDescription;
    data['seo_keywords'] = this.seoKeywords;
    data['seo_h1'] = this.seoH1;
    data['noindex'] = this.noindex;
    data['nofollow'] = this.nofollow;
    data['description'] = this.description;
    if (this.filters != null) {
      data['filters'] = this.filters!.toJson();
    }
    data['nofollow_collections'] = this.nofollowCollections;
    return data;
  }
}