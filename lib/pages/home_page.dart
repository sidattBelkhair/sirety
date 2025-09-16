// lib/pages/home_page.dart
import 'package:flutter/material.dart';
import '../widgets/navbar.dart';
import '../sections/home.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(appBar: TopNavBar(), body: HomeSection());
  }
}
