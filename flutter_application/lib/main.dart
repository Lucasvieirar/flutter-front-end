import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/InputCustom.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KiTreino',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final senhaController = TextEditingController();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Icon(
                  Icons.fitness_center,
                  size: 80,
                  color: Colors.blue,
                ),
                const SizedBox(height: 20),
                const Text(
                  "KiTreino",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 40),
                
                //Email
                 InputCustom(controller: senhaController, label: "Email", icon: Icons.lock, obscureText: false,),
                const SizedBox(height: 20),
                //Senha
                InputCustom(controller: senhaController, label: "Senha", icon: Icons.email, obscureText: false,),
                const SizedBox(height: 10),
                

                // Esqueci senha
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      // ação futura
                    },
                    child: const Text("Esqueci a senha"),
                  ),
                ),

                const SizedBox(height: 20),

                // Botão entrar
                ElevatedButton(
                  onPressed: () {
                    // ação de login
                    print("Email: ${emailController.text}");
                    print("Senha: ${senhaController.text}");
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16), backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ), 
                  child: const Text("Entrar"), 
                ),

                const SizedBox(height: 20),

                // Criar conta
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Não tem conta? "),
                    TextButton(
                      onPressed: () {
                        // ação futura
                      },
                      child: const Text("Criar conta"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}