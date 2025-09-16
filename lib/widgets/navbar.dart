// lib/widgets/navbar.dart
import 'package:flutter/material.dart';
import 'package:myportfolio/l10n/app_localizations.dart';
import '../app_state.dart';

class TopNavBar extends StatelessWidget implements PreferredSizeWidget {
  const TopNavBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(64);

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return AppBar(
      title: Text(t.siteTitle),
      actions: [
        _btn(context, t.navHome, '/home'),
        _btn(context, t.navAbout, '/about'),
        _btn(context, t.navSkills, '/skills'),
        _btn(context, t.navProjects, '/projects'),
        _btn(context, t.navExperience, '/experience'),
        _btn(context, t.navContact, '/contact'),
        const SizedBox(width: 12),
        PopupMenuButton<Locale>(
          icon: const Icon(Icons.language),
          onSelected: (loc) => AppState.locale.value = loc,
          itemBuilder: (_) => const [
            PopupMenuItem(value: Locale('en'), child: Text("English")),
            PopupMenuItem(value: Locale('fr'), child: Text("Français")),
            PopupMenuItem(value: Locale('ar'), child: Text("العربية")),
          ],
        ),
      ],
    );
  }

  Widget _btn(BuildContext context, String text, String route) {
    return TextButton(
      onPressed: () => Navigator.pushReplacementNamed(context, route),
      child: Text(text),
    );
  }
}
