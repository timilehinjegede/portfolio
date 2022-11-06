import 'package:flutter/material.dart';
import 'package:portfolio/modules/projects/views/projects_desktop_view.dart';
import 'package:portfolio/modules/projects/views/projects_mobile_view.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProjectsView extends StatelessWidget {
  const ProjectsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ProjectsMobileView(),
      tablet: ProjectsDesktopView(),
    );
  }
}
