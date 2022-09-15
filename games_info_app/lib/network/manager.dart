import 'dart:convert';
import 'dart:io';



import 'package:games_info_app/models/GameListResponse.dart';
import 'package:games_info_app/models/GenreListResponse.dart';
import 'package:http/http.dart' as http;

class NetworkManager {

  String apiKey = "bb729e7aa315422ea69716e3f7e437c7";

  String baseUrl = "https://rawg-video-games-database.p.rapidapi.com/";

  var headers = {
    'accepts': 'application/json',
    'X-RapidAPI-Key': 'aff0b3060fmsh341831e529ad917p1b0755jsnc95fe6726c71',
    'X-RapidAPI-Host': 'rawg-video-games-database.p.rapidapi.com',
  };

  Future<GameListResponse> fetchGameList() async {
    String endpoint = "games";
    Map<String, String> queryParams = {
      'key': apiKey,
    };

    final uri = Uri.parse(baseUrl + endpoint).replace(queryParameters: queryParams);
    final response = await http.get(uri, headers: headers);

    if (response.statusCode == 200) {
      print(response.toString());
      return GameListResponse.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load games list');
    }
  }

  Future<GenreListResponse> fetchGenreList() async {
    String endpoint = "genres";
    Map<String, String> queryParams = {
      'key': apiKey,
    };

    final uri = Uri.parse(baseUrl + endpoint).replace(queryParameters: queryParams);
    final response = await http.get(uri, headers: headers);

    if (response.statusCode == 200) {
      print(response.toString());
      return GenreListResponse.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load genre list');
    }
  }
}