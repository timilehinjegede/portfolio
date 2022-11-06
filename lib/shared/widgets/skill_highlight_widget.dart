import 'package:flutter/material.dart';
import 'package:portfolio/shared/utils/utils.dart';

class SkillHighlightWidget extends StatelessWidget {
  const SkillHighlightWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.dy),
      child: Row(
        children: [
          Container(
            height: 10.dy,
            width: 10.dx,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: appColors.white,
            ),
          ),
          XBox(5.dx),
          Text(
            'technology here',
            style: TextStyle(height: 1),
          ),
        ],
      ),
    );
  }
}
