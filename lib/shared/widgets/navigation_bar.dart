import 'package:flutter/material.dart';
import 'package:portfolio/modules/home/widgets/mobile_menu.dart';
import 'package:portfolio/shared/navigation/navigation.dart';
import 'package:portfolio/shared/utils/utils.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavigationBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const NavigationBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.dx),
      child: AppBar(
        title: Text(
          'TIM.',
        ),
        centerTitle: false,
        automaticallyImplyLeading: false,
        actions: [
          ResponsiveBuilder(
            builder: (context, sizingInformation) {
              if (sizingInformation.deviceScreenType ==
                  DeviceScreenType.mobile) {
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
                    ...Menu.values.map(
                      (menu) => Row(
                        children: [
                          InkWell(
                            onTap: () {
                              AppNavigator.of(context).push('/${menu.name}');
                            },
                            child: NavigationBarItem(
                              menu: menu,
                            ),
                          ),
                          XBox(10.dx),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: appColors.darkerPrimary,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.dx,
                        vertical: 10.dy,
                      ),
                      child: Text(
                        'View Resume',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: appColors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          )
        ],
        backgroundColor: appColors.primary,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60.dy);
}

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem({
    Key? key,
    required this.menu,
  }) : super(key: key);

  final Menu menu;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '${'${Menu.values.indexOf(menu) + 1}'.padLeft(2, '0')}.',
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w300,
            color: appColors.grey,
          ),
        ),
        XBox(5.dy),
        Text(
          menu.name,
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
            color: appColors.white,
          ),
        ),
      ],
    );
  }
}
