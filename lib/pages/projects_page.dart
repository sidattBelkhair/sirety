// lib/pages/projects_page.dart
import 'package:flutter/material.dart';
import '../widgets/navbar.dart';
import '../sections/projects.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(appBar: TopNavBar(), body: ProjectsSection());
  }
}
