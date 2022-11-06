import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/shared/shared.dart';
import 'package:portfolio/shared/utils/utils.dart';

class HomeDesktopView extends StatelessWidget {
  const HomeDesktopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxHeight = constraints.maxHeight;
        final maxWidth = constraints.maxWidth;
        return Padding(
          padding: EdgeInsets.zero,
          child: Row(
            children: [
              XBox(maxWidth / 4.5),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    YBox(maxHeight / 3.5),
                    Text(
                      'Hi, my name is',
                      style: TextStyle(
                        fontSize: 16.sp,
                      ),
                    ),
                    YBox(5.dy),
                    AutoSizeText(
                      'JEGEDE TIMILEHIN',
                      style: TextStyle(
                        fontSize: 40.sp,
                        fontWeight: FontWeight.w600,
                      ),
                      maxLines: 1,
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
                      textAlign: TextAlign.start,
                    ),
                    YBox(30.dy),
                    SocialPresenceWidget(),
                    YBox(30.dy),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: appColors.darkerPrimary,
                      ),
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.dx, vertical: 15.dy),
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
              ),
              XBox(maxWidth / 4.5),
            ],
          ),
        );
      },
    );
  }
}
