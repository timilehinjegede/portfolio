import 'package:flutter/material.dart';
import 'package:portfolio/shared/navigation/router.dart';
import 'package:portfolio/shared/utils/theme.dart';
import 'package:portfolio/shared/utils/utils.dart';

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
      home: Builder(
        builder: (context) {
          final media = MediaQuery.of(context);
          Dims.setSize(media);
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(
              textScaleFactor: 1,
            ),
            child: Router(
              routeInformationParser: goRouter.routeInformationParser,
              routerDelegate: goRouter.routerDelegate,
            ),
          );
        },
      ),
    );
  }
}
