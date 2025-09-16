// lib/pages/experience_page.dart
import 'package:flutter/material.dart';
import '../widgets/navbar.dart';
import '../sections/experience.dart';

class ExperiencePage extends StatelessWidget {
  const ExperiencePage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(appBar: TopNavBar(), body: ExperienceSection());
  }
}
