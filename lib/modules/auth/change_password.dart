import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final TextEditingController _newPassword = TextEditingController();
  final TextEditingController _newPasswordRepeat = TextEditingController();
  bool _isOscure = true;
  bool _isOscureRepeat = true;
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
            const Text(
                style: TextStyle(fontSize: 20), 'Ingresa tu nueva contraseña'),
            const SizedBox(
              height: 16,
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Contraseña',
                  label: const Text('Contraseña'),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _isOscure = !_isOscure;
                        });
                      },
                      icon: Icon(_isOscure
                          ? Icons.visibility
                          : Icons.visibility_off))),
              keyboardType: TextInputType.visiblePassword,
              controller: _newPassword,
              obscureText: _isOscure,
            ),
            const SizedBox(
              height: 16,
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Repetir contraseña',
                  label: const Text('Repetir contraseña'),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _isOscureRepeat = !_isOscureRepeat;
                        });
                      },
                      icon: Icon(_isOscureRepeat
                          ? Icons.visibility
                          : Icons.visibility_off))),
              keyboardType: TextInputType.visiblePassword,
              controller: _newPasswordRepeat,
              obscureText: _isOscureRepeat,
            ),
            const SizedBox(
              height: 48,
            ),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white),
                  child: const Text('Guardar')),
            ),
          ],
        ),
      ),
    );
  }
}
