import 'package:flutter/material.dart';
import 'package:portfolio/shared/utils/utils.dart';
import 'package:portfolio/shared/widgets/widgets.dart';

class DesktopProjectCard extends StatelessWidget {
  const DesktopProjectCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (index.isEven)
          Container(
            height: 300.dy,
            width: 150.dx,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: appColors.grey,
            ),
          ),
        if (index.isEven) XBox(10.dx),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'DROHEALTH Mobile Application',
                style: TextStyle(
                  fontSize: 22.sp,
                ),
              ),
              YBox(5.dy),
              Text(
                'Lorem ipsumeLorem ipsumeLorem ipsume Lorem ipsumevLorem ipsume Lorem ipsumeLorem ipsume Lorem ipsume. ipsume Lorem ipsumeLorem ipsume Lorem ipsume',
                style: TextStyle(
                  fontSize: 18.sp,
                ),
              ),
              YBox(10.dy),
              SkillHighlightWidget(),
              YBox(10.dy),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: appColors.darkerPrimary,
                      ),
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.dx, vertical: 15.dy),
                      child: Text(
                        'View on Playstore',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          color: appColors.white,
                        ),
                      ),
                    ),
                  ),
                  XBox(15.dx),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: appColors.darkerPrimary,
                      ),
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.dx, vertical: 15.dy),
                      child: Text(
                        'View on AppStore',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          color: appColors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        if (index.isOdd) XBox(10.dx),
        if (index.isOdd)
          Container(
            height: 300.dy,
            width: 150.dx,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: appColors.grey,
            ),
          ),
      ],
    );
  }
}
