import 'package:flutter/material.dart';
import 'package:flutter_application/core/theme/theme.dart';
import 'appBadge.dart';

class WorkoutCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final int exercises;
  final int minutes;
  final BadgeLevel level;
  final VoidCallback? onTap;

  const WorkoutCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.exercises,
    required this.minutes,
    required this.level,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(AppSpacing.md),
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: BorderRadius.circular(AppRadius.md),
        ),
        child: Row(
          children: [
            // ── Ícone ──────────────────────────────────
            Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                color: AppColors.primary.withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(AppRadius.sm),
              ),
              child: Icon(icon, color: AppColors.primary, size: 22),
            ),

            const SizedBox(width: AppSpacing.md),

            // ── Texto ──────────────────────────────────
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: const TextStyle(
                        color: AppColors.textPrimary,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      )),
                  const SizedBox(height: 2),
                  Text(subtitle,
                      style: const TextStyle(
                        color: AppColors.textSecondary,
                        fontSize: 13,
                      )),
                  const SizedBox(height: AppSpacing.sm),
                  Row(
                    children: [
                      _meta(Icons.settings, '$exercises exercícios'),
                      const SizedBox(width: AppSpacing.md),
                      _meta(Icons.access_time, '$minutes min'),
                      const SizedBox(width: AppSpacing.md),
                      AppBadge(level: level),
                    ],
                  ),
                ],
              ),
            ),

            const Icon(Icons.chevron_right,
                color: AppColors.textSecondary, size: 20),
          ],
        ),
      ),
    );
  }

  Widget _meta(IconData icon, String label) {
    return Row(
      children: [
        Icon(icon, size: 13, color: AppColors.textSecondary),
        const SizedBox(width: 3),
        Text(label,
            style: const TextStyle(
                color: AppColors.textSecondary, fontSize: 12)),
      ],
    );
  }
}