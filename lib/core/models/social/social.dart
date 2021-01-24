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
      url: 'https://github.com/timilehinjegede',
    ),
    // Twitter
    Social(
      name: 'Twitter',
      assetSrc: twitterAsset,
      url: 'https://twitter.com/timilehinjegede',
    ),
    // Stackoverflow
    Social(
      name: 'StackOverflow',
      assetSrc: stackOverflowAsset,
      url: 'https://stackoverflow.com/users/13452640/pablito?tab=profile',
    ),
    // Linkedln
    Social(
      name: 'Linkedln',
      assetSrc: linkedInAsset,
      url: 'https://www.linkedin.com/in/timilehinjegede/',
    ),
    // Gmail
    Social(
      name: 'Gmail',
      assetSrc: gMailAsset,
      url: getEmailLink(emailAddress: 'timilehintimothy.jegede@gmail.com'),
    ),
  ];
}
