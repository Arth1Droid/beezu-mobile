import 'package:flutter/material.dart';

/// Tela de Login
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  // Controller para capturar o texto digitado no campo de email
  final TextEditingController emailController = TextEditingController();

  // Controller para capturar o texto digitado no campo de senha
  final TextEditingController senhaController = TextEditingController();

  @override
  void dispose() {
    // Libera os controllers da memória quando a tela é fechada
    emailController.dispose();
    senhaController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Corpo principal da tela
      body: SafeArea(
        child: Container(
          constraints: const BoxConstraints.expand(),
          color: const Color(0xFFFFFFFF),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  color: const Color(0xFFFFFBED), // Cor de fundo da tela
                  width: double.infinity,

                  child: SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(vertical: 123),

                    child: Column(
                      children: [
                        // ==========================
                        // LOGO
                        // ==========================
                        Container(
                          margin: const EdgeInsets.only(
                            bottom: 57,
                            left: 43,
                            right: 30,
                          ),
                          height: 96,
                          width: double.infinity,
                          child: Image.network(
                            "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/U1SZc57q1j/lswcqbfj_expires_30_days.png",
                            fit: BoxFit.fill,
                          ),
                        ),

                        // ==========================
                        // FORMULÁRIO
                        // ==========================
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // --------------------------
                              // TEXTO "EMAIL"
                              // --------------------------
                              const Text(
                                "Email",
                                style: TextStyle(
                                  color: Color(0xFF49290C),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              const SizedBox(height: 9),

                              // --------------------------
                              // CAMPO DE EMAIL
                              // --------------------------
                              TextField(
                                controller: emailController,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  hintText: "Digite seu email",

                                  // Cor de fundo
                                  filled: true,
                                  fillColor: const Color(0xFFFADE85),

                                  // Espaçamento interno
                                  contentPadding:
                                      const EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 14,
                                  ),

                                  // Borda padrão
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.circular(8),
                                    borderSide: const BorderSide(
                                      color: Color(0xFF49290C),
                                    ),
                                  ),

                                  // Borda quando não está selecionado
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.circular(8),
                                    borderSide: const BorderSide(
                                      color: Color(0xFF49290C),
                                    ),
                                  ),

                                  // Borda quando está selecionado
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.circular(8),
                                    borderSide: const BorderSide(
                                      color: Color(0xFF49290C),
                                      width: 2,
                                    ),
                                  ),
                                ),
                              ),

                              const SizedBox(height: 33),

                              // --------------------------
                              // TEXTO "SENHA"
                              // --------------------------
                              const Text(
                                "Senha",
                                style: TextStyle(
                                  color: Color(0xFF49290C),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              const SizedBox(height: 7),

                              // --------------------------
                              // CAMPO DE SENHA
                              // --------------------------
                              TextField(
                                controller: senhaController,

                                // Esconde os caracteres digitados
                                obscureText: true,

                                decoration: InputDecoration(
                                  hintText: "Digite sua senha",
                                  filled: true,
                                  fillColor: const Color(0xFFFADE85),

                                  contentPadding:
                                      const EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 14,
                                  ),

                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.circular(8),
                                    borderSide: const BorderSide(
                                      color: Color(0xFF49290C),
                                    ),
                                  ),

                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.circular(8),
                                    borderSide: const BorderSide(
                                      color: Color(0xFF49290C),
                                    ),
                                  ),

                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.circular(8),
                                    borderSide: const BorderSide(
                                      color: Color(0xFF49290C),
                                      width: 2,
                                    ),
                                  ),
                                ),
                              ),

                              const SizedBox(height: 12),

                              // --------------------------
                              // LINK "ESQUECI A SENHA"
                              // --------------------------
                              const Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "Esqueci a senha",
                                  style: TextStyle(
                                    color: Color(0xFF49290C),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    decoration:
                                        TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 95),

                        // ==========================
                        // BOTÃO LOGIN
                        // ==========================
                        InkWell(
                          onTap: () {
                            // Captura os valores digitados
                            String email = emailController.text;
                            String senha = senhaController.text;

                            print("Email: $email");
                            print("Senha: $senha");

                            // Aqui você colocará sua lógica de login
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: const Color(0xFFF7C41D),
                            ),
                            padding: const EdgeInsets.symmetric(
                              vertical: 12,
                              horizontal: 102,
                            ),
                            margin: const EdgeInsets.only(bottom: 32),
                            child: const Text(
                              "Login",
                              style: TextStyle(
                                color: Color(0xFF171706),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),

                        // ==========================
                        // BOTÃO LOGIN GOOGLE
                        // ==========================
                        InkWell(
                          onTap: () {
                            print("Login Google");
                          },
                          child: SizedBox(
                            width: 253,
                            height: 54,
                            child: Image.network(
                              "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/U1SZc57q1j/5pmhuuhn_expires_30_days.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}