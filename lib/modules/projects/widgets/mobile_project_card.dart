import 'package:flutter/material.dart';
import 'package:portfolio/shared/utils/utils.dart';
import 'package:portfolio/shared/widgets/widgets.dart';

class MobileProjectCard extends StatelessWidget {
  const MobileProjectCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: hPadding.dx,
        vertical: vPadding.dy,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: appColors.darkPrimary,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 1),
            blurRadius: 20,
            color: appColors.darkerPrimary.withOpacity(.1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Flutter'),
          YBox(10.dy),
          Text('DROHEALTH Mobile Application'),
          YBox(20.dy),
          Text(
            'Lorem ipsumeLorem ipsumeLorem ipsume Lorem ipsumevLorem ipsume Lorem ipsumeLorem ipsume Lorem ipsume. ipsume Lorem ipsumeLorem ipsume Lorem ipsume',
          ),
          YBox(20.dy),
          SkillHighlightWidget(),
          YBox(20.dy),
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: appColors.darkerPrimary,
                  ),
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.dx, vertical: 15.dy),
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
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.dx, vertical: 15.dy),
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
    );
  }
}
