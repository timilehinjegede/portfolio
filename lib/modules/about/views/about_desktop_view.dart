import 'package:flutter/material.dart';
import 'package:portfolio/shared/utils/utils.dart';
import 'package:portfolio/shared/widgets/widgets.dart';

class AboutDesktopView extends StatelessWidget {
  const AboutDesktopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(
        horizontal: hPadding.dx,
        vertical: vPadding.dy,
      ),
      child: Column(
        children: [
          YBox(30.dy),
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
          YBox(25.dx),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Lorem ipsumeLorem ipsumeLorem ipsume Lorem ipsumevLorem ipsume Lorem ipsumeLorem ipsume Lorem ipsume' *
                          2,
                      style: TextStyle(
                        fontSize: 20.sp,
                      ),
                    ),
                    YBox(30.dy),
                    Text(
                      'Lorem ipsumeLorem ipsumeLorem ipsume Lorem ipsumevLorem ipsume Lorem ipsumeLorem ipsume Lorem ipsume',
                      style: TextStyle(
                        fontSize: 20.sp,
                      ),
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
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.dx, vertical: 15.dy),
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
              ),
              XBox(20.dx),
              Container(
                height: 300.dy,
                width: 150.dx,
                decoration: BoxDecoration(
                  color: appColors.white,
                  shape: BoxShape.rectangle,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
