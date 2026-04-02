import 'package:flutter/material.dart';
import '../../core/theme/theme.dart';
import '../../shared/widgets/widgets.dart';
import 'package:flutter_application/features/auth/loginPage.dart';
import 'package:flutter_application/features/auth/register.dart';

class BeginPage extends StatelessWidget {
  const BeginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthShell(
      title: 'KiTreino',
      subtitle: 'Crie sua rotina personalizada de treinos',
      fields: [
        AppButton(
          text: 'Login',
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const LoginPage()),
          ),
        ),
        AppButton(
          text: 'Cadastrar',
          backgroundColor: AppColors.surface,
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const RegisterPage()),
          ),
        ),
      ],
    );
  }
}