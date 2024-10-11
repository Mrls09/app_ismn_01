import 'package:flutter/material.dart';

class RecoverPassword extends StatefulWidget {
  const RecoverPassword({super.key});

  @override
  State<RecoverPassword> createState() => _RecoverPasswordState();
}

class _RecoverPasswordState extends State<RecoverPassword> {
  final TextEditingController _email = TextEditingController();
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
            const Text(style: TextStyle(fontSize: 20), 'Recuperar contraseña'),
            const SizedBox(
              height: 16,
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Correo electronico',
                label: Text('Correo electronico'),
              ),
              keyboardType: TextInputType.emailAddress,
              controller: _email,
            ),
            const SizedBox(
              height: 24,
            ),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/validate-code');
                  },
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white),
                  child: const Text('Recuperar')),
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
                  child: const Text('Regresar')),
            )
          ],
        ),
      ),
    );
  }
}
