import 'package:flutter/material.dart';
import 'package:portfolio/shared/utils/utils.dart';
import 'package:portfolio/shared/widgets/widgets.dart';

class HomeMobileView extends StatelessWidget {
  const HomeMobileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxHeight = constraints.maxHeight;
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: hPadding.dx),
          child: Column(
            children: [
              YBox(maxHeight / 9),
              Container(
                height: 160.dy,
                width: 160.dx,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: appColors.white,
                ),
              ),
              YBox(50.dy),
              Text(
                'Hi, my name is',
                style: TextStyle(
                  fontSize: 16.sp,
                ),
              ),
              YBox(5.dy),
              Text(
                'JEGEDE TIMILEHIN',
                style: TextStyle(
                  fontSize: 40.sp,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
              YBox(10.dy),
              Text(
                'I build mobile blah blah blah blah',
                style: TextStyle(
                  fontSize: 20.sp,
                  color: appColors.grey,
                ),
              ),
              YBox(20.dy),
              Text(
                'Lorem ipsumeLorem ipsumeLorem ipsume Lorem ipsumevLorem ipsume Lorem ipsumeLorem ipsume Lorem ipsume',
                style: TextStyle(
                  fontSize: 16.sp,
                ),
                textAlign: TextAlign.center,
              ),
              YBox(30.dy),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: appColors.darkerPrimary,
                ),
                padding:
                    EdgeInsets.symmetric(horizontal: 10.dx, vertical: 15.dy),
                child: Text(
                  'See more about me ->',
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
      },
    );
  }
}
