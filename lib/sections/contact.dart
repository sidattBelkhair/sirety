// lib/sections/contact.dart
import 'package:flutter/material.dart';
import 'package:myportfolio/l10n/app_localizations.dart';
import '../widgets/section.dart';
import '../services/supabase_service.dart';

class ContactSection extends StatefulWidget {
  const ContactSection({super.key});
  @override
  State<ContactSection> createState() => _ContactSectionState();
}

class _ContactSectionState extends State<ContactSection> {
  final _formKey = GlobalKey<FormState>();
  final _name = TextEditingController();
  final _email = TextEditingController();
  final _msg = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    return Section(
      title: t.navContact,
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 500), // centre et limite largeur
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _buildField(_name, t.name),
                const SizedBox(height: 15),
                _buildField(_email, t.email,
                    validator: (value) {
                      if (value == null || value.isEmpty) return t.email;
                      if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                        return "Email invalide";
                      }
                      return null;
                    }),
                const SizedBox(height: 15),
                _buildField(_msg, t.message, maxLines: 4),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Theme.of(context).colorScheme.primary,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () async {
                      if (_formKey.currentState?.validate() ?? false) {
                        await ContactService.addMessage(
                          _name.text,
                          _email.text,
                          _msg.text,
                        );
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(t.sentSuccess)),
                        );
                        _name.clear();
                        _email.clear();
                        _msg.clear();
                      }
                    },
                    child: Text(
                      t.send,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildField(TextEditingController controller, String label,
      {int maxLines = 1, String? Function(String?)? validator}) {
    return TextFormField(
      controller: controller,
      maxLines: maxLines,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white, // fond blanc
        labelText: label,
        labelStyle: const TextStyle(color: Colors.black54),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide:
              BorderSide(color: Theme.of(context).colorScheme.primary, width: 2),
        ),
      ),
      validator: validator ??
          (value) => (value == null || value.isEmpty) ? "$label requis" : null,
    );
  }
}
