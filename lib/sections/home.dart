// lib/sections/home.dart
import 'package:flutter/material.dart';
import 'package:myportfolio/l10n/app_localizations.dart';
import '../services/supabase_service.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Container(
      padding: const EdgeInsets.all(40),
      alignment: Alignment.center,
      child: Column(
        children: [
          const CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage("assets/profile.jpg"),
          ),
          const SizedBox(height: 20),
          Text(t.heroHello, style: Theme.of(context).textTheme.headlineLarge),
          Text(t.heroSubtitle),
          const SizedBox(height: 20),

          // Aller à la page Contact
          ElevatedButton(
            onPressed: () => Navigator.pushReplacementNamed(context, '/contact'),
            child: Text(t.contactMe),
          ),

          const SizedBox(height: 10),

          // Bouton unique pour voir/télécharger le CV
          OutlinedButton(
            onPressed: CVService.preview,
            child: Text(t.downloadCV),
          ),
        ],
      ),
    );
  }
}
