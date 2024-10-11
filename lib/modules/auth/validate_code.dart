import 'package:flutter/material.dart';

class ValidateCode extends StatefulWidget {
  const ValidateCode({super.key});

  @override
  State<ValidateCode> createState() => _ValidateCodeState();
}

class _ValidateCodeState extends State<ValidateCode> {
  final TextEditingController _code = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/luchador.png',
              width: 100,
              height: 100,
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(style: TextStyle(fontSize: 20), 'Validar codigo'),
            const SizedBox(
              height: 16,
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Codigo de verificación',
                label: Text('Codigo de verficación'),
              ),
              keyboardType: TextInputType.text,
              controller: _code,
            ),
            const SizedBox(
              height: 24,
            ),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/change-password');
                  },
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white),
                  child: const Text('Validar')),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              width: 200,
              height: 48,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/login');
                  },
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white),
                  child: const Text('Salir')),
            )
          ],
        ),
      ),
    );
  }
}
