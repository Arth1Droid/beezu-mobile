import 'package:supabase_flutter/supabase_flutter.dart';

class AuthService {
  final SupabaseClient _supabase = Supabase.instance.client;

  //login pelo google
  Future<void> signInWithGoogle() async {
    try {
      await _supabase.auth.signInWithOAuth(
        OAuthProvider.google,
        redirectTo: 'beezu://login-callback',
      );
    } catch (e) {
      throw Exception('Erro na autenticação: $e');
    }
  }
}