import 'package:flutter/material.dart';

class PerfilPage extends StatefulWidget {
  const PerfilPage({super.key});

  @override
  State<PerfilPage> createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('images/logo_usuario.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      'Meu Perfil',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Pesquisar',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                ),
                SizedBox(height: 20.0,),
                Text(
                  'Serviços',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.0,),
                Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 110.0,
                                height: 110.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: FittedBox(
                                  fit: BoxFit.cover,
                                  child: Image.asset('images/logo_tesoura.png'),
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                'Corte de Cabelo',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 30.0),
                          Column(
                            children: [
                              Container(
                                width: 130.0,
                                height: 130.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: FittedBox(
                                  fit: BoxFit.cover,
                                  child: Image.asset('images/logo_navalha.png'),
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                'Barbear',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 110.0,
                                height: 110.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: FittedBox(
                                  fit: BoxFit.cover,
                                  child: Image.asset('images/logo_tratamento_capilar.png'),
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                'Tratamento Capilar',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 40.0),
                          Column(
                            children: [
                              Container(
                                width: 110.0,
                                height: 110.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: FittedBox(
                                  fit: BoxFit.cover,
                                  child: Image.asset('images/icone_barba.png'),
                                ),
                              ),
                              SizedBox(height: 10.0,),
                              Text(
                                'Cuidados com a barba',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20.0),
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Colors.deepPurple),
                        ),
                        child: Text(
                          'Reservar',
                          style: TextStyle(color: Colors.amber,
                          fontSize: 15.0),
                        ),
                      ),
                    ], 
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}