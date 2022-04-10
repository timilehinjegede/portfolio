import 'package:flutter/material.dart';
import 'package:portfolio/utils/utils.dart';

class Social {
  final String name;
  final String assetSrc;
  final String url;

  Social({@required this.name, @required this.assetSrc, @required this.url});

  static List<Social> socialsList = [
    // Github
    Social(
      name: 'Github',
      assetSrc: githubAsset,
      url: githubUrl,
    ),
    // Twitter
    Social(
      name: 'Twitter',
      assetSrc: twitterAsset,
      url: twitterUrl,
    ),
    // Stackoverflow
    Social(
      name: 'StackOverflow',
      assetSrc: stackOverflowAsset,
      url: stackOverflowUrl,
    ),
    // Linkedln
    Social(
      name: 'Linkedln',
      assetSrc: linkedInAsset,
      url: linkedlnUrl,
    ),
    // Gmail
    Social(
      name: 'Gmail',
      assetSrc: gMailAsset,
      url: getEmailLink(emailAddress: 'hello@timilehinjegede.com'),
    ),
  ];
}
