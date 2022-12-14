import 'package:flutter/material.dart';
import 'package:flutter_travel_app/pages/detail_page.dart';
import 'package:flutter_travel_app/pages/navbarPages/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: MainPage(),
      home: DetailPage(),
    );
  }
}
