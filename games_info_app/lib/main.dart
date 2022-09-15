import 'package:flutter/material.dart';
import 'package:games_info_app/pages/home_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  /// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Game Zone',
      theme: ThemeData(
        backgroundColor: Colors.black,
        canvasColor: Colors.black,
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Game Zone'),
    );
  }
}
