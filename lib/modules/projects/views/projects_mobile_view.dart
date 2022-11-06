import 'package:flutter/material.dart';
import 'package:portfolio/modules/projects/widgets/mobile_project_card.dart';
import 'package:portfolio/shared/utils/utils.dart';
import 'package:portfolio/shared/widgets/widgets.dart';

class ProjectsMobileView extends StatefulWidget {
  const ProjectsMobileView({Key? key}) : super(key: key);

  @override
  State<ProjectsMobileView> createState() => _ProjectsMobileViewState();
}

class _ProjectsMobileViewState extends State<ProjectsMobileView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: hPadding.dx,
        left: hPadding.dx,
        top: vPadding.dy,
      ),
      child: Column(
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
                      'Projects',
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
          SizedBox(
            height: 50,
            child: TabBar(
              controller: _tabController,
              isScrollable: true,
              tabs: [
                Tab(
                  text: 'All',
                ),
                Tab(
                  text: 'Mobile',
                ),
                Tab(
                  text: 'Web',
                ),
                Tab(
                  text: 'Open Source',
                ),
              ],
            ),
          ),
          YBox(30.dx),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      ...List.generate(
                        6,
                        (index) => Column(
                          children: [
                            Row(
                              mainAxisAlignment: index.isEven
                                  ? MainAxisAlignment.start
                                  : MainAxisAlignment.end,
                              children: [
                                SizedBox(
                                  width: 100.dx,
                                  child: Divider(),
                                ),
                                XBox(15.dx),
                                Text('0${index + 1}'),
                              ],
                            ),
                            YBox(10.dy),
                            MobileProjectCard(),
                            YBox(30.dy),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(),
                SizedBox(),
                SizedBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
