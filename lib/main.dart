import 'package:flutter/material.dart';
import 'package:portfolio/ui/views/home/home_screen.dart';
import 'package:portfolio/utils/utils.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Timilehin Jegede',
      theme: themeData,
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
