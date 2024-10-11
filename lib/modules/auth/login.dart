import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  bool _isOscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/luchador.png',
                width: 100,
                height: 100,
              ),
              const SizedBox(
                height: 32,
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
                controller: _password,
                obscureText: _isOscure,
              ),
              const SizedBox(
                height: 48,
              ),
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                    onPressed: () {
                      print('Email: ${_email.text}');
                      print('Password: ${_password.text}');
                    },
                    style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white),
                    child: const Text('Iniciar Sesion')),
              ),
              const SizedBox(
                height: 16,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                        context, '/recover-password');
                  },
                  child: const Text('Recuperar contraseña'))
            ],
          ),
        ),
      ),
    );
  }
}
