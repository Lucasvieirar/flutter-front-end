import 'package:flutter/material.dart';

enum BadgeLevel { iniciante, intermediario, avancado }

class AppBadge extends StatelessWidget {
  final BadgeLevel level;

  const AppBadge({super.key, required this.level});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: _bg,
        borderRadius: BorderRadius.circular(999),
      ),
      child: Text(
        _label,
        style: TextStyle(
          color: _fg,
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  String get _label => switch (level) {
        BadgeLevel.iniciante => 'Iniciante',
        BadgeLevel.intermediario => 'Intermediário',
        BadgeLevel.avancado => 'Avançado',
      };

  Color get _bg => switch (level) {
        BadgeLevel.iniciante => const Color(0xFF1A3A1A),
        BadgeLevel.intermediario => const Color(0xFF3A2E00),
        BadgeLevel.avancado => const Color(0xFF3A1010),
      };

  Color get _fg => switch (level) {
        BadgeLevel.iniciante => const Color(0xFF4ADE80),
        BadgeLevel.intermediario => const Color(0xFFFBBF24),
        BadgeLevel.avancado => const Color(0xFFF87171),
      };
}