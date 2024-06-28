import 'cliente.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'perfil.dart';
import 'resetsenha.dart';

class Login_UsuarioPage extends StatefulWidget {
  const Login_UsuarioPage({super.key});

  @override
  State<Login_UsuarioPage> createState() => _Login_UsuarioPageState();
}

class _Login_UsuarioPageState extends State<Login_UsuarioPage> {
    void _navigateToRegister() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ClientePage()),
    );
  }

  void _navigatePassword() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ResetSenhaPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login',
        style: TextStyle(color: Colors.amber),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      backgroundColor: Colors.orangeAccent,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormFieldEmail(),
            TextFormFieldSenha(),
            SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    text: 'Esqueceu a senha? ',
                    style: TextStyle(color: Colors.black, fontSize: 16.0,),
                    children: [
                      TextSpan(
                        text: 'Clique aqui',
                        style: TextStyle(
                          color: Colors.deepPurple,
                          decoration: TextDecoration.underline
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = _navigatePassword,
                      ),
                    ]
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text: 'Não possui registro? ',
                    style: TextStyle(color: Colors.black, fontSize: 16.0),
                    children: [
                      TextSpan(
                        text: 'Cadastrar',
                        style: TextStyle(
                            color: Colors.deepPurple,
                            decoration: TextDecoration.underline),
                        recognizer: TapGestureRecognizer()
                          ..onTap = _navigateToRegister,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Container(
              color: Colors.deepPurple,
              width: 100,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PerfilPage()),
                  );
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.deepPurple)),
                child: Text(
                  'Entrar',
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 15.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget TextFormFieldEmail() {
  return TextFormField(
    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
      labelText: 'E-mail',
      labelStyle: TextStyle(
        color: Colors.black,
        fontSize: 15.0,
      ),
    ),
  );
}

Widget TextFormFieldSenha() {
  return TextFormField(
    obscureText: true,
    decoration: InputDecoration(
      labelText: 'Senha',
      labelStyle: TextStyle(
        color: Colors.black,
        fontSize: 15.0,
      ),
    ),
  );
}

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: Center(
        child: Text('Register Page'),
      ),
    );
  }
}

class RegisterPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: Center(
        child: Text('Register Password'),
      ),
    );
  }
}