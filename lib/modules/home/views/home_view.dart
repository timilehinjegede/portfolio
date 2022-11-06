import 'package:flutter/material.dart';
import 'package:portfolio/modules/home/views/home_desktop_view.dart';
import 'package:portfolio/modules/home/views/home_mobile_view.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: HomeMobileView(),
      tablet: Center(
        child: Text('This is for tablet'),
      ),
      desktop: HomeDesktopView(),
    );
  }
}
