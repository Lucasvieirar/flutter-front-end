import 'package:flutter/material.dart';
import 'package:flutter_application/features/auth/begin.dart';
import 'core/theme/theme.dart';
import 'features/auth/begin.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KiTreino',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.dark,
      home: const BeginPage(),
    );
  }
}