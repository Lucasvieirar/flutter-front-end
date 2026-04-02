import 'package:flutter/material.dart';
import 'package:flutter_application/shared/widgets/appButton.dart';
import 'package:flutter_application/shared/widgets/appInput.dart';
import 'package:flutter_application/shared/widgets/authShell.dart';
import '../../core/theme/theme.dart';
import 'register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AuthShell(
      title: 'Bem-vindo',
      subtitle: 'Entre com sua Conta',
      fields: [
        AppInput(
          controller: _emailController,
          hint: 'email',
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
          prefixIcon: const Icon(Icons.email, color: AppColors.iconDefault),
        ),
        AppInput(
          controller: _passwordController,
          hint: 'senha',
          isPassword: true,
          textInputAction: TextInputAction.done,
          prefixIcon: const Icon(Icons.lock, color: AppColors.iconDefault),
        ),

        // Forgot password
        Align(
          alignment: Alignment.centerLeft,
          child: TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              minimumSize: Size.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            child: const Text('Esqueceu a senha?', style: AppTypography.linkText),
          ),
        ),

        AppButton(text: 'Entrar', onPressed: _handleLogin),
      ],
      footer: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Não tem uma conta? ', style: AppTypography.bodyMedium),
         GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => const RegisterPage()),
    );
  },
  child: const Text('Cadastre-se', style: AppTypography.linkText),
),
        ],
      ),
    );
  }

  void _handleLogin() {
    
  }
}