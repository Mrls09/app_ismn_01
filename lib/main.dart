import 'package:app_ismn_01/modules/auth/change_password.dart';
import 'package:app_ismn_01/modules/auth/login.dart';
import 'package:app_ismn_01/modules/auth/recover_password.dart';
import 'package:app_ismn_01/modules/auth/validate_code.dart';
import 'package:app_ismn_01/widgets/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const Login(),
        '/recover-password': (context) => const RecoverPassword(),
        '/validate-code': (context) => const ValidateCode(),
        '/change-password': (context) => const ChangePassword(),
      },
    );
  }
}
