class GenreListResponse {
  int? count;
  String? next;
  String? previous;
  List<GenreResults>? results;

  GenreListResponse({this.count, this.next, this.previous, this.results});

  GenreListResponse.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    next = json['next'];
    previous = json['previous'];
    if (json['results'] != null) {
      results = <GenreResults>[];
      json['results'].forEach((v) {
        results!.add(new GenreResults.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['count'] = this.count;
    data['next'] = this.next;
    data['previous'] = this.previous;
    if (this.results != null) {
      data['results'] = this.results!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class GenreResults {
  int? id;
  String? name;
  String? slug;
  int? gamesCount;
  String? imageBackground;
  List<Games>? games;

  GenreResults(
      {this.id,
        this.name,
        this.slug,
        this.gamesCount,
        this.imageBackground,
        this.games});

  GenreResults.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    gamesCount = json['games_count'];
    imageBackground = json['image_background'];
    if (json['games'] != null) {
      games = <Games>[];
      json['games'].forEach((v) {
        games!.add(new Games.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['slug'] = this.slug;
    data['games_count'] = this.gamesCount;
    data['image_background'] = this.imageBackground;
    if (this.games != null) {
      data['games'] = this.games!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Games {
  int? id;
  String? slug;
  String? name;
  int? added;

  Games({this.id, this.slug, this.name, this.added});

  Games.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    slug = json['slug'];
    name = json['name'];
    added = json['added'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['slug'] = this.slug;
    data['name'] = this.name;
    data['added'] = this.added;
    return data;
  }
}
