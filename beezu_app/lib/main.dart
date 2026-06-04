import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // inicializa o supabase
  await Supabase.initialize(
    url: 'https://gxfmpvbmwmpeiabsjjaj.supabase.co',
    anonKey: 'sb_publishable_iJgboQFVoqbLU-RT3YNlVw_lK2suyEZ',
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Beezu App'), 
        ),
      ),
    );
  }
}