import 'package:flutter/material.dart';
import 'package:flutter_application/shared/widgets/appBadge.dart';
import 'package:flutter_application/shared/widgets/appBottom.dart';
import 'package:flutter_application/shared/widgets/createWorkoutCard.dart';
import 'package:flutter_application/shared/widgets/workoutDart.dart';
import 'package:flutter_application/core/animations/staggeredFade.dart';
import '../../core/theme/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _navIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.screenPadding,
            vertical: AppSpacing.md,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ── Header ──────────────────────────────
              StaggeredFade(
                index: 0,
                child: const Text('Olá, atleta 👋',
                    style: TextStyle(
                      color: AppColors.textSecondary,
                      fontSize: 14,
                    )),
              ),
              const SizedBox(height: 4),
              StaggeredFade(
                index: 1,
                child: const Text('Seus Treinos',
                    style: TextStyle(
                      color: AppColors.textPrimary,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    )),
              ),

              const SizedBox(height: AppSpacing.lg),

              // ── Criar treino ─────────────────────────
              StaggeredFade(
                index: 2,
                child: CreateWorkoutCard(onTap: () {}),
              ),

              const SizedBox(height: AppSpacing.md),

              // ── Lista de treinos ─────────────────────
              StaggeredFade(
                index: 3,
                child: WorkoutCard(
                  icon: Icons.local_fire_department,
                  title: 'Treino A — Peito e Tríceps',
                  subtitle: 'Supino, crucifixo, tríceps testa e mergulho',
                  exercises: 6,
                  minutes: 45,
                  level: BadgeLevel.intermediario,
                  onTap: () {},
                ),
              ),

              const SizedBox(height: AppSpacing.md),

              StaggeredFade(
                index: 4,
                child: WorkoutCard(
                  icon: Icons.bolt,
                  title: 'Treino B — Costas e Bíceps',
                  subtitle: 'Puxada, remada, rosca direta e martelo',
                  exercises: 6,
                  minutes: 50,
                  level: BadgeLevel.intermediario,
                  onTap: () {},
                ),
              ),

              const SizedBox(height: AppSpacing.md),

              StaggeredFade(
                index: 5,
                child: WorkoutCard(
                  icon: Icons.radio_button_checked,
                  title: 'Treino C — Pernas',
                  subtitle: 'Agachamento, leg press, extensora e stiff',
                  exercises: 7,
                  minutes: 55,
                  level: BadgeLevel.avancado,
                  onTap: () {},
                ),
              ),

              const SizedBox(height: AppSpacing.md),

              StaggeredFade(
                index: 6,
                child: WorkoutCard(
                  icon: Icons.local_fire_department,
                  title: 'Treino D — Ombros e Abdômen',
                  subtitle: 'Desenvolvimento, elevação lateral e prancha',
                  exercises: 5,
                  minutes: 40,
                  level: BadgeLevel.iniciante,
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: AppBottomNav(
        currentIndex: _navIndex,
        onTap: (i) => setState(() => _navIndex = i),
      ),
    );
  }
}