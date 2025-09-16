// lib/services/supabase_service.dart
import 'package:supabase_flutter/supabase_flutter.dart';
import '../config.dart';
import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html; // utilisé seulement sur web

class Supa {
  static Future<void> init() async {
    await Supabase.initialize(url: supabaseUrl, anonKey: supabaseAnonKey);
  }

  static SupabaseClient get client => Supabase.instance.client;
}

class ContactService {
  static Future<void> addMessage(String name, String email, String message) async {
    await Supa.client.from('contacts').insert({
      'name': name,
      'email': email,
      'message': message,
      'created_at': DateTime.now().toIso8601String(),
    });
  }
}

class CVService {
  static const _bucket = 'public-assets'; // ⬅️ mets le nom exact de ton bucket
  static const _path = 'cv/cv.pdf';

  static String _publicUrl() {
    return Supa.client.storage.from(_bucket).getPublicUrl(_path);
  }

  /// Ouvre le PDF dans un nouvel onglet (prévisualisation)
  static Future<void> preview() async {
    final url = _publicUrl();
    await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
  }

  /// Force le téléchargement sur Web (ankre HTML), sinon open externe
  static Future<void> download() async {
    final url = _publicUrl();
    if (kIsWeb) {
      final a = html.AnchorElement(href: url)
        ..download = 'CV.pdf'
        ..target = '_blank';
      a.click();
    } else {
      await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
    }
  }
}
