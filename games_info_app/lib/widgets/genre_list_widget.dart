import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:games_info_app/models/GenreListResponse.dart';
import 'package:games_info_app/widgets/genre_item_widget.dart';

import 'package:transparent_image/transparent_image.dart';

import '../models/Album.dart';
import '../network/manager.dart';
import '../styles/AppTheme.dart';

class GenreListWidget extends StatefulWidget {
  const GenreListWidget({Key? key}) : super(key: key);

  @override
  State<GenreListWidget> createState() => _GenreListWidgetState();
}

class _GenreListWidgetState extends State<GenreListWidget> {
  late Future<GenreListResponse> futureGenreList;


  @override
  void initState() {
    super.initState();
    futureGenreList = NetworkManager().fetchGenreList();
  }

  @override
  Widget build(BuildContext context) {
    return _getGenres(context);
  }

  FutureBuilder<GenreListResponse> _getGenres(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 4;
    final double itemWidth = size.width / 2;

    return FutureBuilder(
      future: futureGenreList,
        builder: (context, snapshot) {
        if(snapshot.hasData){
          List<GenreResults> list = (snapshot.data!.results) as List<GenreResults>;
          return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: MediaQuery.of(context).size.width /
                  (MediaQuery.of(context).size.height / 4)),
              itemCount: list.length,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index){
                return GenreWidget(
                    title: list[index].name.toString(),
                    image: list[index].imageBackground.toString());
              });
          // return Text(snapshot.data!.toString());
        }
        else if(snapshot.hasError){
          return Text(snapshot.error.toString());
        }
        else{
          return const CircularProgressIndicator();
        }
        });
  }
}