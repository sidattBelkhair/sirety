// lib/pages/skills_page.dart
import 'package:flutter/material.dart';
import '../widgets/navbar.dart';
import '../sections/skills.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(appBar: TopNavBar(), body: SkillsSection());
  }
}
