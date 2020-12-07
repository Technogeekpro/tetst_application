import 'package:flutter/material.dart';
import 'HomeScreen.dart';
import 'package:tetst_application/Pages/signup_page.dart';

void main() {
  runApp(MyApp());
}

//StatelessWidget  static view
//StatefullWidget  dynamic  view

class MyApp extends StatelessWidget{
  TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SignupPage(),
    );

  }
}

