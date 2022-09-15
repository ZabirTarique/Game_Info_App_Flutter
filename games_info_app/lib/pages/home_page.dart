
import 'package:flutter/material.dart';

import '../models/Album.dart';
import '../widgets/game_list_widget.dart';
import '../widgets/genre_list_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Future<Album> futureAlbum;
  int _selectedIndex = 0;
  Color item1color = Colors.red;
  Color item2color = Colors.grey;
  Color item3color = Colors.grey;
  Color item4color = Colors.grey;


  static const List<Widget> _bottomMenu = <Widget>[
    GameListWidget(),
    GenreListWidget(),
    Text("test3"),
    Text("test4"),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: IndexedStack(index: _selectedIndex,children: const [
        GameListWidget(),
        GenreListWidget(),
        Text("test3"),
        Text("test4"),
      ],),
      /*body: _bottomMenu.elementAt(_selectedIndex),*/
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            // sets the background color of the `BottomNavigationBar`
              canvasColor: Colors.black,
              // sets the active color of the `BottomNavigationBar` if `Brightness` is light
              primaryColor: Colors.black,
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: ImageIcon(const AssetImage("assets/images/games.png"), color: item1color, size: 24,),
                label: 'Games',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(const AssetImage("assets/images/application.png"), color: item2color, size: 24,),
                label: 'Genres',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(const AssetImage("assets/images/like.png"), color: item3color, size: 24,),
                label: 'Favorites',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(const AssetImage("assets/images/store.png"), color: item4color, size: 24,),
                label: 'Store',
              ),
            ],
            currentIndex: _selectedIndex,
            backgroundColor: Colors.white,
            selectedItemColor: Colors.red,
            showSelectedLabels: true,
            selectedIconTheme: const IconThemeData(color: Colors.red),
            unselectedIconTheme: const IconThemeData(color: Colors.grey),
            onTap: _onItemTapped,
          ),
        ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch(index) {
        case 0:
          item1color = Colors.red;
          item2color = Colors.grey;
          item3color = Colors.grey;
          item4color = Colors.grey;
          break;
        case 1:
          item1color = Colors.grey;
          item2color = Colors.red;
          item3color = Colors.grey;
          item4color = Colors.grey;
          break;
        case 2:
          item1color = Colors.grey;
          item2color = Colors.grey;
          item3color = Colors.red;
          item4color = Colors.grey;
          break;
        case 3:
          item1color = Colors.grey;
          item2color = Colors.grey;
          item3color = Colors.grey;
          item4color = Colors.red;
          break;
      }
    });
  }
}