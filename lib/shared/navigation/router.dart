import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/modules/contact/views/contact_view.dart';
import 'package:portfolio/modules/experience/views/experience_view.dart';
import 'package:portfolio/modules/home/views/home_view.dart';
import 'package:portfolio/modules/projects/views/projects_view.dart';
import 'package:portfolio/shared/navigation/routes.dart';

final goRouter = GoRouter(
  urlPathStrategy: UrlPathStrategy.path,
  errorBuilder: (_, __) => const Scaffold(
    body: Center(
      child: Text('404 page'),
    ),
  ),
  routes: [
    GoRoute(
      path: '/',
      name: AppRoutes.home,
      builder: (_, __) => const HomeView(),
    ),
    GoRoute(
      path: '/contact',
      name: AppRoutes.contact,
      builder: (_, __) => const ContactView(),
    ),
    GoRoute(
      path: '/experience',
      name: AppRoutes.experience,
      builder: (_, __) => const ExperienceView(),
    ),
    GoRoute(
      path: '/projects',
      name: AppRoutes.projects,
      builder: (_, __) => const ProjectsView(),
    ),
  ],
);
