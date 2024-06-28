import 'package:flutter/material.dart';


class ResetSenhaPage extends StatefulWidget {
  const ResetSenhaPage({super.key});

  @override
  State<ResetSenhaPage> createState() => _ResetSenhaPageState();
}

class _ResetSenhaPageState extends State<ResetSenhaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recuperar Senha',
        style: TextStyle(color: Colors.amber),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      backgroundColor: Colors.orangeAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              child: Image.asset('images/redefinir-senha.png'),
            ),
            SizedBox(height: 25.0,),
            Text(
              'Esqueceu a senha?',
              style: TextStyle(fontSize: 32,
              fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 25.0,),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Nova Senha',
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: 20.0,),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Confirmar Senha',
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              color: Colors.deepPurple,
              width: 100,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
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