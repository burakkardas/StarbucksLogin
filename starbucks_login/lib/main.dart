import 'package:flutter/material.dart';
import 'package:starbucks_login/page/login.dart';
import 'package:starbucks_login/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Starbucks Login',
        theme: AppTheme.themeData,
        home: const Login(),
      );
}
