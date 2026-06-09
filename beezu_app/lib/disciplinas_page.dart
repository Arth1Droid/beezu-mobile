import 'package:flutter/material.dart';
import 'widgets/disciplina_card.dart';
import 'disciplinas_service.dart'; 

class Disciplina {
  final String id;
  final String nome;
  final String semestre;
  final String professor;

  Disciplina({
    required this.id,
    required this.nome,
    required this.semestre,
    required this.professor,
  });
}

class DisciplinasPage extends StatefulWidget {
  const DisciplinasPage({Key? key}) : super(key: key);

  @override
  State<DisciplinasPage> createState() => _DisciplinasPageState();
}

class _DisciplinasPageState extends State<DisciplinasPage> {
  final DisciplinasService _disciplinasService = DisciplinasService();
  
  List<Disciplina> _disciplinas = [];
  bool _isLoading = true;
  String? _errorMessage;

  static const Color bgCream = Color(0xFFFDF8ED);
  static const Color brownText = Color(0xFF4A2B15);
  static const Color yellowBeezu = Color(0xFFF6C831);

  @override
  void initState() {
    super.initState();
    _carregarDadosReais();
  }

  Future<void> _carregarDadosReais() async {
    try {
      final dados = await _disciplinasService.fetchDisciplinasDoBanco();
      
      setState(() {
        _disciplinas = dados.map((item) => Disciplina(
          id: item['id']?.toString() ?? '',
          nome: item['nome'] ?? 'Sem nome',
          semestre: item['semestre'] ?? '',
          professor: item['professor'] ?? 'Sem professor',
        )).toList();
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _errorMessage = 'Não foi possível carregar as disciplinas.';
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgCream,
      appBar: AppBar(
        backgroundColor: yellowBeezu,
        elevation: 0,
        title: const Text(
          'beezu',
          style: TextStyle(
            color: brownText, 
            fontWeight: FontWeight.w800, 
            fontSize: 24,
            letterSpacing: 1.5,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              backgroundColor: bgCream,
              radius: 18,
              child: const Icon(Icons.person, color: brownText, size: 20),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            const Text(
              'Disciplinas', 
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: brownText)
            ),
            const SizedBox(height: 8),
            const Text(
              'Veja aqui as suas disciplinas', 
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: brownText)
            ),
            const SizedBox(height: 24),
            Expanded(
              child: _buildConteudo(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 3,
        selectedItemColor: brownText,
        unselectedItemColor: brownText.withOpacity(0.5),
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        backgroundColor: yellowBeezu,
        elevation: 10,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.dashboard_outlined), label: 'Dashboard'),
          BottomNavigationBarItem(icon: Icon(Icons.view_carousel_outlined), label: 'Mural'),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today_outlined), label: 'Calendário'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Disciplinas'),
        ],
      ),
    );
  }

  Widget _buildConteudo() {
    if (_isLoading) {
      return const Center(child: CircularProgressIndicator(color: yellowBeezu));
    }

    if (_errorMessage != null) {
      return Center(child: Text(_errorMessage!, style: const TextStyle(color: Colors.red)));
    }

    if (_disciplinas.isEmpty) {
      return const Center(
        child: Text('Nenhuma disciplina encontrada.', style: TextStyle(color: brownText))
      );
    }

    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: _disciplinas.length,
      itemBuilder: (context, index) {
        final disciplina = _disciplinas[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: DisciplinaCard(
            nome: disciplina.nome,
            semestre: disciplina.semestre,
            professor: disciplina.professor,
            onTap: () {
              debugPrint('Acessando ID: ${disciplina.id}');
            },
          ),
        );
      },
    );
  }
}