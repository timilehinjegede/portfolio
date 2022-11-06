import 'package:flutter/material.dart';
import 'package:portfolio/shared/utils/utils.dart';

class SocialPresenceWidget extends StatelessWidget {
  const SocialPresenceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.dy,
      width: double.infinity,
      decoration: BoxDecoration(
        color: appColors.white.withOpacity(.1),
      ),
      child: Row(
        mainAxisAlignment: context.isMobile
            ? MainAxisAlignment.spaceEvenly
            : MainAxisAlignment.start,
        children: [
          SocialPresenceItem(),
          XBox(5),
          SocialPresenceItem(),
          XBox(5),
          SocialPresenceItem(),
          XBox(5),
          SocialPresenceItem(),
          XBox(5),
          SocialPresenceItem(),
        ],
      ),
    );
  }
}

class SocialPresenceItem extends StatelessWidget {
  const SocialPresenceItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.dy,
      width: 40.dx,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: appColors.white,
      ),
    );
  }
}
