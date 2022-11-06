import 'package:flutter/material.dart';
import 'package:portfolio/modules/contact/views/contact_desktop_view.dart';
import 'package:portfolio/modules/contact/views/contact_mobile_view.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ContactView extends StatelessWidget {
  const ContactView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ContactMobileView(),
      tablet: Center(
        child: Text('This is for tablet'),
      ),
      desktop: ContactDesktopView(),
    );
  }
}
