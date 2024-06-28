import 'package:flutter/material.dart';

class EmpresaPage extends StatefulWidget {
  const EmpresaPage({super.key});

  @override
  State<EmpresaPage> createState() => _EmpresaPageState();
}

class _EmpresaPageState extends State<EmpresaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CADASTRO DE EMPRESAS',
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
          TextFormFieldCNPJ(),
          TextFormFieldDescricao(),
          TextFormFieldEndereco(),
          TextFormFieldTelefone(),
          TextFormFieldEmail(),
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
      fontSize: 16.0,),
    ),
  );
}

TextFormFieldCNPJ() {
  return TextFormField(
    keyboardType: TextInputType.number,
    decoration: InputDecoration(
      labelText: 'CNPJ',
      labelStyle: TextStyle(color: Colors.black,
      fontSize: 16.0,),
    ),
  );
}

TextFormFieldDescricao() {
  return TextFormField(
    keyboardType: TextInputType.name,
    decoration: InputDecoration(
      labelText: 'Descrição',
      labelStyle: TextStyle(color: Colors.black,
      fontSize: 16.0,),
    ),
  );
}

TextFormFieldEndereco() {
  return TextFormField(
    keyboardType: TextInputType.text,
    decoration: InputDecoration(
      labelText: 'Endereço',
      labelStyle: TextStyle(color: Colors.black,
      fontSize: 16.0,),
    ),
  );
}

TextFormFieldTelefone() {
  return TextFormField(
    keyboardType: TextInputType.number,
    decoration: InputDecoration(
      labelText: 'Telefone',
      labelStyle: TextStyle(color: Colors.black,
      fontSize: 16.0,),
    ),
  );
}

TextFormFieldEmail() {
  return TextFormField(
    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
      labelText: 'Email',
      labelStyle: TextStyle(color: Colors.black,
      fontSize: 16.0,),
    ),
  );
}