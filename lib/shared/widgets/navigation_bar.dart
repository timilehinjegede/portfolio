import 'package:flutter/material.dart';
import 'package:portfolio/shared/utils/utils.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavigationBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const NavigationBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'TIM.',
      ),
      centerTitle: false,
      automaticallyImplyLeading: false,
      actions: [
        ResponsiveBuilder(
          builder: (context, sizingInformation) {
            if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
              return IconButton(
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
                splashRadius: 20,
                icon: Icon(Icons.menu_rounded),
              );
            }

            return Padding(
              padding: EdgeInsets.only(right: hPadding.dx),
              child: Row(
                children: [
                  Text(
                    'About',
                  ),
                  XBox(10.dx),
                  Text(
                    'Projects',
                  ),
                  XBox(10.dx),
                  Text(
                    'Contact',
                  ),
                  XBox(10.dx),
                  Text(
                    'Resume',
                  ),
                ],
              ),
            );
          },
        )
      ],
      backgroundColor: appColors.primary,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60.dy);
}
