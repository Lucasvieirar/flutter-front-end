import 'package:flutter/material.dart';
import 'package:flutter_application/core/animations/staggeredFade.dart';
import 'package:flutter/animation.dart';
import '../../core/theme/theme.dart';
import 'appLogo.dart';
import 'appText.dart';


class AuthShell extends StatelessWidget {
  final String title;
  final String subtitle;

  /// The form widgets rendered below title/subtitle (each gets its own fade).
  final List<Widget> fields;

  /// Optional widget rendered below the main button (e.g. "Already have an account?").
  final Widget? footer;

  const AuthShell({
    super.key,
    required this.title,
    required this.subtitle,
    required this.fields,
    this.footer,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.screenPadding,
            vertical: AppSpacing.xxl,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ── Logo ──────────────────────────────────────────
              StaggeredFade(index: 0, child: const AppLogo()),

              const SizedBox(height: AppSpacing.xl),

              // ── Title ─────────────────────────────────────────
              StaggeredFade(index: 1, child: AppTitle(title)),

              const SizedBox(height: AppSpacing.sm),

              // ── Subtitle ──────────────────────────────────────
              StaggeredFade(index: 2, child: AppSubtitle(subtitle)),

              const SizedBox(height: AppSpacing.xl),

              // ── Fields (index starts at 3) ────────────────────
              ..._buildFields(),

              // ── Footer ────────────────────────────────────────
              if (footer != null) ...[
                const SizedBox(height: AppSpacing.xl),
                StaggeredFade(index: 3 + fields.length, child: footer!),
              ],
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildFields() {
    final items = <Widget>[];
    for (int i = 0; i < fields.length; i++) {
      if (i > 0) items.add(const SizedBox(height: AppSpacing.md));
      items.add(StaggeredFade(index: 3 + i, child: fields[i]));
    }
    return items;
  }
}