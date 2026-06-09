import 'package:supabase_flutter/supabase_flutter.dart';

class DisciplinasService {
  final SupabaseClient _supabase = Supabase.instance.client;

  Future<List<Map<String, dynamic>>> fetchDisciplinasDoBanco() async {
    try {
      final response = await _supabase
          .from('disciplinas') 
          .select('id, nome, semestre, professor');
      
      return List<Map<String, dynamic>>.from(response);
    } catch (e) {
      throw Exception('Erro ao carregar disciplinas do Supabase: $e');
    }
  }
}