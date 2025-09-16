// lib/sections/experience.dart
import 'package:flutter/material.dart';
import 'package:myportfolio/l10n/app_localizations.dart';
import '../widgets/section.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Section(
      title: t.navExperience,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: const Icon(Icons.security, color: Colors.blue),
            title: Text(t.expRole1),
            subtitle: Text(t.expDesc1),
          ),
          ListTile(
            leading: const Icon(Icons.laptop_mac, color: Colors.green),
            title: Text(t.expRole2),
            subtitle: Text(t.expDesc2),
          ),
        ],
      ),
    );
  }
}
