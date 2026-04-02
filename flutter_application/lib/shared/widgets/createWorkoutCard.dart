import 'package:flutter/material.dart';
import 'package:flutter_application/core/theme/theme.dart';

class CreateWorkoutCard extends StatelessWidget {
  final VoidCallback? onTap;

  const CreateWorkoutCard({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(AppSpacing.md),
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: BorderRadius.circular(AppRadius.md),
          border: Border.all(
            color: AppColors.primary.withValues(alpha: 0.35),
            width: 1.5,
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(AppRadius.sm),
              ),
              child: const Icon(Icons.add, color: Colors.white, size: 24),
            ),
            const SizedBox(width: AppSpacing.md),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Criar Novo Treino',
                    style: TextStyle(
                      color: AppColors.textPrimary,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    )),
                SizedBox(height: 2),
                Text('Monte seu treino personalizado',
                    style: TextStyle(
                      color: AppColors.textSecondary,
                      fontSize: 13,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}