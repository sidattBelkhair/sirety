// lib/main.dart
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'l10n/app_localizations.dart';

import 'app_state.dart';
import 'pages/home_page.dart';
import 'pages/about_page.dart';
import 'pages/skills_page.dart';
import 'pages/projects_page.dart';
import 'pages/experience_page.dart';
import 'pages/contact_page.dart';

import 'services/supabase_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supa.init(); // Supabase (voir étape 4)
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = ThemeData(
      brightness: Brightness.light, // ⬅️ passe en clair
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color.fromARGB(255, 2, 103, 244),
        brightness: Brightness.light,
      ),
      scaffoldBackgroundColor: const Color.fromARGB(255, 91, 176, 232), // fond clair doux
      useMaterial3: true,
    );

    return ValueListenableBuilder<Locale>(
      valueListenable: AppState.locale, // gestion globale de la langue
      builder: (_, locale, __) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: theme,
          locale: locale,
          supportedLocales: const [Locale('en'), Locale('fr'), Locale('ar')],
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          initialRoute: '/home',
          routes: {
            '/home': (_) => const HomePage(),
            '/about': (_) => const AboutPage(),
            '/skills': (_) => const SkillsPage(),
            '/projects': (_) => const ProjectsPage(),
            '/experience': (_) => const ExperiencePage(),
            '/contact': (_) => const ContactPage(),
          },
        );
      },
    );
  }
}
