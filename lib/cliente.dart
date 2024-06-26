import 'package:flutter/material.dart';

class ClientePage extends StatefulWidget {
  const ClientePage({super.key});

  @override
  State<ClientePage> createState() => _ClientePageState();
}

class _ClientePageState extends State<ClientePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CADASTRO DE CLIENTES',
        style: TextStyle(color: Colors.amber),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      backgroundColor: Colors.orangeAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormFieldNome(),
          TextFormFieldCPF(),
          TextFormFieldEmail(),
          TextFormFieldSenha(),
          SizedBox(height: 25.0,),
          Container(
            color: Colors.deepPurple,
            width: 100,
            height: 50,
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.deepPurple)
              ), 
              child: Text(
                'Cadastrar',
                style: TextStyle(color: Colors.amber,
                fontSize: 11.0,),
              ),
            ),
          ),  
        ],
      ),
    );
  }
}

TextFormFieldNome() {
  return TextFormField(
    keyboardType: TextInputType.name,
    decoration: InputDecoration(
      labelText: 'Nome',
      labelStyle: TextStyle(color: Colors.black,
      fontSize: 15.0)
    ),
  );
}

TextFormFieldCPF() {
  return TextFormField(
    keyboardType: TextInputType.number,
    decoration: InputDecoration(
      labelText: 'CPF',
      labelStyle: TextStyle(color: Colors.black,
      fontSize: 15.0)
    ),
  );
}

TextFormFieldEmail() {
  return TextFormField(
    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
      labelText: 'E-mail',
      labelStyle: TextStyle(color:  Colors.black,
      fontSize: 15.0)
    ),
  );
}

TextFormFieldSenha() {
  return TextFormField(
    obscureText: true,
    decoration: InputDecoration(
      labelText: 'Senha',
      labelStyle: TextStyle(color: Colors.black,
      fontSize: 15.0)
    ),
  );
}