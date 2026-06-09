import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'disciplinas_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://gxfmpvbmwmpeiabsjjaj.supabase.co',
    anonKey: 'sb_publishable_iJgboQFVoqbLU-RT3YN1Vw_lK2suyEZ',
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Beezu App',
      home: DisciplinasPage(),
    );
  }
}