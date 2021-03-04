import 'package:flutter/material.dart';
import 'package:portfolio/ui/views/home/home_screen.dart';
import 'package:portfolio/utils/utils.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Timilehin Jegede',
      theme: themeData,
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
