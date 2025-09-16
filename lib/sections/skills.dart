import 'package:flutter/material.dart';
import 'package:myportfolio/l10n/app_localizations.dart';

import '../widgets/section.dart';
import '../data/content.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Section(
      title: t.navSkills,
      child: Wrap(
        spacing: 20,
        runSpacing: 20,
        children: skills.map((s) => Chip(label: Text(s.name))).toList(),
      ),
    );
  }
}
