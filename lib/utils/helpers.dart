import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// ===== constants =====
const double hPaddingValue = 90;
const double vPaddingValue = 30;
const double buttonRadius = 35;

// ===== responsiveness =====
class ResponsiveUtil extends StatelessWidget {
  final Widget mobileWidget;
  final Widget tabletWidget;
  final Widget desktopWidget;

  ResponsiveUtil({
    this.mobileWidget,
    this.tabletWidget,
    this.desktopWidget,
  });

  static bool isMobile(context) =>
      MediaQuery.of(context).size.shortestSide < 600;

  static bool isTablet(context) =>
      MediaQuery.of(context).size.shortestSide >= 600;

  static bool isDesktop(context) =>
      MediaQuery.of(context).size.shortestSide >= 1300;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1300) {
          return desktopWidget;
        } else if (constraints.maxWidth >= 600) {
          return tabletWidget;
        } else {
          return mobileWidget;
        }
      },
    );
  }
}

// ===== spacing =====
class ScreenUtil {
  final BuildContext context;

  ScreenUtil.init(this.context);

  MediaQueryData get mediaQuery => MediaQuery.of(context);

  double screenHeight({double extent = 1}) => mediaQuery.size.height * extent;

  double screenWidth({double extent = 1}) => mediaQuery.size.width * extent;

  double statusBarHeight() => mediaQuery.padding.top;

  double bottomBarHeight() => mediaQuery.padding.bottom;
}

class XBox extends StatelessWidget {
  final double _width;

  const XBox(this._width);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _width,
    );
  }
}

class YBox extends StatelessWidget {
  final double _height;

  const YBox(this._height);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _height,
    );
  }
}

// ===== method utils =====
void launchUrl({@required String url}) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    log('unable to launch url');
  }
}

String getEmailLink({@required emailAddress}) {
  final Uri _emailLaunchUri = Uri(
    scheme: 'mailto',
    path: emailAddress,
    // TODO(timilehinjegede): add subject and body of email
    // queryParameters: {'TODO: Add Subject': 'TODO: Add body'},
  );
  return _emailLaunchUri.toString();
}
