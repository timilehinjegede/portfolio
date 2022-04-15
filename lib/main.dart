import 'package:flutter/material.dart';
import 'package:portfolio/modules/home/views/home_view.dart';
import 'package:portfolio/shared/utils/theme.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Timilehin Jegede',
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      home: const HomeView(),
    );
  }
}
