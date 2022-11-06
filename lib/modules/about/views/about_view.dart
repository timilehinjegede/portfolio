import 'package:flutter/material.dart';
import 'package:portfolio/modules/about/views/about_desktop_view.dart';
import 'package:portfolio/modules/about/views/about_mobile_view.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: AboutMobileView(),
      tablet: Center(
        child: Text('This is for tablet'),
      ),
      desktop: AboutDesktopView(),
    );
  }
}
