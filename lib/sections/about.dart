// lib/sections/about.dart
import 'package:flutter/material.dart';
import 'package:myportfolio/l10n/app_localizations.dart';
import '../widgets/section.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Section(
      title: t.navAbout,
      child: Text(
        t.aboutText,
        style: const TextStyle(fontSize: 16, height: 1.5),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
