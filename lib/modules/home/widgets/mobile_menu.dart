import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/shared/navigation/navigator.dart';
import 'package:portfolio/shared/utils/utils.dart';

class MobileMenu extends StatelessWidget {
  const MobileMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: appColors.primary,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: hPadding.dx,
          vertical: vPadding.dy,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'TIM.',
                ),
                IconButton(
                  onPressed: () {
                    Scaffold.of(context).closeEndDrawer();
                  },
                  splashRadius: 20,
                  icon: Icon(
                    Icons.close_rounded,
                    size: 30.sp,
                    color: appColors.white,
                  ),
                )
              ],
            ),
            Spacer(),
            // YBox(30.dy),
            MenuItem(
              menu: Menu.about,
            ),
            YBox(40.dy),
            MenuItem(
              menu: Menu.projects,
            ),
            YBox(40.dy),
            MenuItem(
              menu: Menu.contact,
            ),
            YBox(40.dy),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: appColors.darkerPrimary,
              ),
              padding: EdgeInsets.symmetric(horizontal: 20.dx, vertical: 15.dy),
              child: Text(
                'View my Resume',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                  color: appColors.white,
                ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  const MenuItem({
    Key? key,
    required this.menu,
  }) : super(key: key);

  final Menu menu;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Scaffold.of(context).closeEndDrawer();
        AppNavigator.of(context).push('/${menu.name}');
      },
      child: Column(
        children: [
          Text(
            '${'${Menu.values.indexOf(menu) + 1}'.padLeft(2, '0')}.',
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w300,
              color: appColors.grey,
            ),
          ),
          YBox(5.dy),
          Text(
            menu.name,
            style: TextStyle(
              fontSize: 35.sp,
              fontWeight: FontWeight.w500,
              color: appColors.white,
            ),
          ),
        ],
      ),
    );
  }
}

enum Menu { about, projects, contact }
