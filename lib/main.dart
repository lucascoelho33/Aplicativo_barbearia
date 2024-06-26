import 'package:aplicativo_barbearia/cliente.dart';
import 'package:aplicativo_barbearia/empresa.dart';
import 'package:aplicativo_barbearia/login_usuario.dart';
import 'package:aplicativo_barbearia/resetsenha.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Barber Shop'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  void _incrementCounter() {
    setState(() {
      
    });
  }

  void _navigateToRegister() {
    Navigator.push(
      context, 
      MaterialPageRoute(builder: (context) => ClientePage()),
    );
  }

  void _navigateToRegister1() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => EmpresaPage()),
    );
  }

  void _navigatePassword() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ResetSenhaPage())
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('Barber Shopp',
        style: TextStyle(color: Colors.amber),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.orangeAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 200,
              height: 200,
              child: Image.asset('images/logo_barbearia.png'),
            ),
            const SizedBox(height: 25.0,),
            Container(
              color: Colors.deepPurple,
              height: 50,
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => const Login_UsuarioPage()),
                  );
                },
                  style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.deepPurple)
                ),
                child: Text(
                  'LOGIN',
                  style: TextStyle(color: Colors.amber,
                  fontSize: 25.0),
                ), 
              ),
            ),
            const SizedBox(height: 25.0,),
            
            const SizedBox(height: 10.0,),
            RichText(
              text: TextSpan(
                text: 'É Empresa? ',
                style: TextStyle(color: Colors.black, fontSize: 16.0),
                children: [
                  TextSpan(
                    text: 'Clique aqui',
                    style: TextStyle(color: Colors.deepPurple,
                    decoration: TextDecoration.underline),
                    recognizer: TapGestureRecognizer()..onTap =
                    _navigateToRegister1,
                  )
                ]
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

  
}
