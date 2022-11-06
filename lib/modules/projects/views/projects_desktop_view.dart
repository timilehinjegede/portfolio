import 'package:flutter/material.dart';
import 'package:portfolio/modules/projects/widgets/desktop_project_card.dart';
import 'package:portfolio/shared/utils/utils.dart';

class ProjectsDesktopView extends StatefulWidget {
  const ProjectsDesktopView({Key? key}) : super(key: key);

  @override
  State<ProjectsDesktopView> createState() => _ProjectsDesktopViewState();
}

class _ProjectsDesktopViewState extends State<ProjectsDesktopView>
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
          YBox(15.dx),
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
                            DesktopProjectCard(
                              index: index,
                            ),
                            YBox(40.dy),
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
