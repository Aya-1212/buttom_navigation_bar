import 'package:buttom_navigation_bar/my_first_app.dart';
import 'package:flutter/material.dart';


void main() {
  runApp( MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
      return MaterialApp(debugShowCheckedModeBanner: false,
      home: MyFirstApp(),);
   
  }
}
