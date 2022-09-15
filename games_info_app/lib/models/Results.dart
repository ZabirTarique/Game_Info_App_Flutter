import 'Genres.dart';
import 'ParentPlatform.dart';
import 'Ratings.dart';
import 'Screenshots.dart';
import 'Stores.dart';
import 'Tags.dart';

class Results {
  int? id;
  String? slug;
  String? name;
  String? released;
  bool? tba;
  String? backgroundImage;
  double? rating;
  int? ratingTop;
  List<Ratings>? ratings;
  int? ratingsCount;
  int? reviewsTextCount;
  int? added;
  AddedByStatus? addedByStatus;
  int? metacritic;
  int? playtime;
  int? suggestionsCount;
  String? updated;
  Null? userGame;
  int? reviewsCount;
  String? saturatedColor;
  String? dominantColor;
  List<Platforms>? platforms;
  List<ParentPlatforms>? parentPlatforms;
  List<Genres>? genres;
  List<Stores>? stores;
  Null? clip;
  List<Tags>? tags;
  Platforms? esrbRating;
  List<ShortScreenshots>? shortScreenshots;

  Results(
      {this.id,
        this.slug,
        this.name,
        this.released,
        this.tba,
        this.backgroundImage,
        this.rating,
        this.ratingTop,
        this.ratings,
        this.ratingsCount,
        this.reviewsTextCount,
        this.added,
        this.addedByStatus,
        this.metacritic,
        this.playtime,
        this.suggestionsCount,
        this.updated,
        this.userGame,
        this.reviewsCount,
        this.saturatedColor,
        this.dominantColor,
        this.platforms,
        this.parentPlatforms,
        this.genres,
        this.stores,
        this.clip,
        this.tags,
        this.esrbRating,
        this.shortScreenshots});

  Results.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    slug = json['slug'];
    name = json['name'];
    released = json['released'];
    tba = json['tba'];
    backgroundImage = json['background_image'];
    rating = json['rating'];
    ratingTop = json['rating_top'];
    if (json['ratings'] != null) {
      ratings = <Ratings>[];
      json['ratings'].forEach((v) {
        ratings!.add(new Ratings.fromJson(v));
      });
    }
    ratingsCount = json['ratings_count'];
    reviewsTextCount = json['reviews_text_count'];
    added = json['added'];
    addedByStatus = json['added_by_status'] != null
        ? new AddedByStatus.fromJson(json['added_by_status'])
        : null;
    metacritic = json['metacritic'];
    playtime = json['playtime'];
    suggestionsCount = json['suggestions_count'];
    updated = json['updated'];
    userGame = json['user_game'];
    reviewsCount = json['reviews_count'];
    saturatedColor = json['saturated_color'];
    dominantColor = json['dominant_color'];
    if (json['platforms'] != null) {
      platforms = <Platforms>[];
      json['platforms'].forEach((v) {
        platforms!.add(new Platforms.fromJson(v));
      });
    }
    if (json['parent_platforms'] != null) {
      parentPlatforms = <ParentPlatforms>[];
      json['parent_platforms'].forEach((v) {
        parentPlatforms!.add(new ParentPlatforms.fromJson(v));
      });
    }
    if (json['genres'] != null) {
      genres = <Genres>[];
      json['genres'].forEach((v) {
        genres!.add(new Genres.fromJson(v));
      });
    }
    if (json['stores'] != null) {
      stores = <Stores>[];
      json['stores'].forEach((v) {
        stores!.add(new Stores.fromJson(v));
      });
    }
    clip = json['clip'];
    if (json['tags'] != null) {
      tags = <Tags>[];
      json['tags'].forEach((v) {
        tags!.add(new Tags.fromJson(v));
      });
    }
    esrbRating = json['esrb_rating'] != null
        ? new Platforms.fromJson(json['esrb_rating'])
        : null;
    if (json['short_screenshots'] != null) {
      shortScreenshots = <ShortScreenshots>[];
      json['short_screenshots'].forEach((v) {
        shortScreenshots!.add(new ShortScreenshots.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['slug'] = this.slug;
    data['name'] = this.name;
    data['released'] = this.released;
    data['tba'] = this.tba;
    data['background_image'] = this.backgroundImage;
    data['rating'] = this.rating;
    data['rating_top'] = this.ratingTop;
    if (this.ratings != null) {
      data['ratings'] = this.ratings!.map((v) => v.toJson()).toList();
    }
    data['ratings_count'] = this.ratingsCount;
    data['reviews_text_count'] = this.reviewsTextCount;
    data['added'] = this.added;
    if (this.addedByStatus != null) {
      data['added_by_status'] = this.addedByStatus!.toJson();
    }
    data['metacritic'] = this.metacritic;
    data['playtime'] = this.playtime;
    data['suggestions_count'] = this.suggestionsCount;
    data['updated'] = this.updated;
    data['user_game'] = this.userGame;
    data['reviews_count'] = this.reviewsCount;
    data['saturated_color'] = this.saturatedColor;
    data['dominant_color'] = this.dominantColor;
    if (this.platforms != null) {
      data['platforms'] = this.platforms!.map((v) => v.toJson()).toList();
    }
    if (this.parentPlatforms != null) {
      data['parent_platforms'] =
          this.parentPlatforms!.map((v) => v.toJson()).toList();
    }
    if (this.genres != null) {
      data['genres'] = this.genres!.map((v) => v.toJson()).toList();
    }
    if (this.stores != null) {
      data['stores'] = this.stores!.map((v) => v.toJson()).toList();
    }
    data['clip'] = this.clip;
    if (this.tags != null) {
      data['tags'] = this.tags!.map((v) => v.toJson()).toList();
    }
    if (this.esrbRating != null) {
      data['esrb_rating'] = this.esrbRating!.toJson();
    }
    if (this.shortScreenshots != null) {
      data['short_screenshots'] =
          this.shortScreenshots!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
