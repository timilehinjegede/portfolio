import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void launchUrl({@required String url}) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    // show snackBar => cannot open the url
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
