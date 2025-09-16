// lib/pages/about_page.dart
import 'package:flutter/material.dart';
import '../widgets/navbar.dart';
import '../sections/about.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(appBar: TopNavBar(), body: AboutSection());
  }
}
