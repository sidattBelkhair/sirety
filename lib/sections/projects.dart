import 'package:flutter/material.dart';
import 'package:myportfolio/l10n/app_localizations.dart';

import '../widgets/section.dart';
import '../data/content.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Section(
      title: t.navProjects,
      child: Column(
        children: projects
            .map(
              (p) => Card(
                child: ListTile(
                  title: Text(p.title),
                  subtitle: Text(p.description),
                  trailing: p.sourceUrl != null
                      ? IconButton(
                          icon: const Icon(Icons.code),
                          onPressed: () => launchUrl(Uri.parse(p.sourceUrl!)),
                        )
                      : null,
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
