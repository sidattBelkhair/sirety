// lib/data/content.dart
import 'package:flutter/material.dart';

class Skill {
  final String name;
  final IconData icon;
  Skill(this.name, this.icon);
}

class ProjectItem {
  final String title;
  final String description;
  final String? sourceUrl;
  ProjectItem({required this.title, required this.description, this.sourceUrl});
}

// === Compétences ===
final skills = <Skill>[
  // Bureautique
  Skill('Word', Icons.description),
  Skill('Excel', Icons.grid_on),
  Skill('PowerPoint', Icons.slideshow),

  // Programmation
  Skill('Java', Icons.coffee),
  Skill('HTML', Icons.language),
  Skill('CSS', Icons.style),
  Skill('Python', Icons.memory),
  Skill('JavaScript', Icons.code),
  Skill('Spring Boot', Icons.settings),
  Skill('Android Studio', Icons.android),
  Skill('C++', Icons.computer),
  Skill('Flutter', Icons.flutter_dash),
  Skill('Supabase', Icons.cloud),

  // Cybersécurité & Réseaux
  Skill('Router', Icons.security),
  Skill('Switch', Icons.warning),
  Skill('VLANs', Icons.router),
  Skill('Réseaux LAN', Icons.wifi),
  Skill('CTF Player', Icons.flag),
  Skill('Flags', Icons.flag_circle),
  Skill('Firewall', Icons.shield),
  Skill('PHP',Icons.cloud), 
  Skill('BetterCap', Icons.integration_instructions),
  Skill('VPNs', Icons.lock),
  Skill('Sparta', Icons.integration_instructions),
  Skill('DevSecOps', Icons.integration_instructions),
  Skill('Snort', Icons.integration_instructions),
];

// === Projets ===
final projects = <ProjectItem>[
  ProjectItem(
    title: 'Portfolio Web',
    description: 'Un portfolio Flutter Web multilingue (EN/FR/AR).',
    sourceUrl: "https://github.com/yourname/portfolio",
  ),
  ProjectItem(
    title: 'Application Mobile',
    description: 'Exemple d’application mobile en Flutter.',
    sourceUrl: "https://github.com/yourname/mobile",
  ),
];
