import 'package:flutter/material.dart';
import 'package:portfolio/shared/navigation/router.dart';
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
    return MaterialApp.router(
      title: 'Timilehin Jegede',
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      routeInformationParser: goRouter.routeInformationParser,
      routerDelegate: goRouter.routerDelegate,
    );
  }
}
