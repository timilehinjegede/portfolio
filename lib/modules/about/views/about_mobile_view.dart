import 'package:flutter/material.dart';
import 'package:portfolio/shared/utils/utils.dart';
import 'package:portfolio/shared/widgets/widgets.dart';

class AboutMobileView extends StatelessWidget {
  const AboutMobileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(
        horizontal: hPadding.dx,
        vertical: vPadding.dy,
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '01.',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: appColors.grey,
                ),
              ),
              XBox(5.dx),
              Expanded(
                child: Row(
                  children: [
                    Text(
                      'About me',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    XBox(10.dx),
                    Flexible(
                      child: Divider(),
                    ),
                  ],
                ),
              ),
            ],
          ),
          YBox(40.dx),
          Container(
            height: 160.dy,
            width: 160.dx,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: appColors.white,
            ),
          ),
          YBox(20.dx),
          Text(
            'Lorem ipsumeLorem ipsumeLorem ipsume Lorem ipsumevLorem ipsume Lorem ipsumeLorem ipsume Lorem ipsume' *
                2,
          ),
          YBox(30.dy),
          Text(
            'Lorem ipsumeLorem ipsumeLorem ipsume Lorem ipsumevLorem ipsume Lorem ipsumeLorem ipsume Lorem ipsume',
          ),
          YBox(30.dy),
          ...List.generate(
            5,
            (index) {
              return SkillHighlightWidget();
            },
          ),
          YBox(40.dy),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: appColors.darkerPrimary,
            ),
            padding: EdgeInsets.symmetric(horizontal: 20.dx, vertical: 15.dy),
            child: Text(
              'View my resume ->',
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
                color: appColors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
