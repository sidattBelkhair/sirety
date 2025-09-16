// lib/pages/contact_page.dart
import 'package:flutter/material.dart';
import '../widgets/navbar.dart';
import '../sections/contact.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(appBar: TopNavBar(), body: ContactSection());
  }
}
