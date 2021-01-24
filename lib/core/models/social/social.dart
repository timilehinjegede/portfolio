import 'package:flutter/material.dart';
import 'package:portfolio/utils/utils.dart';

class Social {
  final String name;
  final String assetSrc;
  final String link;

  const Social(
      {@required this.name, @required this.assetSrc, @required this.link});

  static const List<Social> socialsList = [
    // Github
    Social(
      name: 'Github',
      assetSrc: githubAsset,
      link: 'https://github.com/timilehinjegede',
    ),
    // Twitter
    Social(
      name: 'Twitter',
      assetSrc: twitterAsset,
      link: 'https://twitter.com/timilehinjegede',
    ),
    // Stackoverflow
    Social(
      name: 'StackOverflow',
      assetSrc: stackOverflowAsset,
      link: 'https://stackoverflow.com/users/13452640/pablito?tab=profile',
    ),
    // Linkedln
    Social(
      name: 'Linkedln',
      assetSrc: linkedInAsset,
      link: 'https://www.linkedin.com/in/timilehinjegede/',
    ),
    // Gmail
    Social(
      name: 'Gmail',
      assetSrc: gMailAsset,
      link: 'link',
    ),
  ];
}
