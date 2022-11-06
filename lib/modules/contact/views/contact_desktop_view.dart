import 'package:flutter/material.dart';
import 'package:portfolio/shared/utils/utils.dart';

class ContactDesktopView extends StatelessWidget {
  const ContactDesktopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: hPadding.dx,
        vertical: vPadding.dy,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '03.',
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
                      'Contact',
                      style: TextStyle(
                        fontSize: 25.sp,
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
          Text(
            'Let’s build your project.',
            style: TextStyle(
              fontSize: 25.sp,
            ),
          ),
          YBox(30.dy),
          Text(
            'I am currently open to opportunities, I would love to learn more about what you are building and how I can come in!',
            style: TextStyle(
              fontSize: 22.sp,
              fontWeight: FontWeight.w300,
            ),
            textAlign: TextAlign.center,
          ),
          YBox(40.dy),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: appColors.darkerPrimary,
            ),
            padding: EdgeInsets.symmetric(horizontal: 20.dx, vertical: 15.dy),
            child: Text(
              'Say Hello',
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
                color: appColors.white,
              ),
            ),
          ),
          YBox(40.dy),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: appColors.darkerPrimary,
            ),
            padding: EdgeInsets.symmetric(horizontal: 20.dx, vertical: 15.dy),
            child: Text(
              'Back to home ->',
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
