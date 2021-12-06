import 'package:flutter/material.dart';
import 'package:language_airplane/Coreano/JogoMemoria_Cores_Coreano.dart';
import 'package:language_airplane/Coreano/JogoMemoria_Frutas_Coreano.dart';
import 'package:language_airplane/Coreano/JogoMemoria_Numeros_Coreano.dart';

class Tela_JogoMemoria extends StatefulWidget {
  @override
  _Tela_JogoMemoriaState createState() => _Tela_JogoMemoriaState();
}

class _Tela_JogoMemoriaState extends State<Tela_JogoMemoria> {
  void _abrirJogoMemoria_Numero_Coreano(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> JogoMemoria_Numero_Coreano() ));
  }

  void _abrirJogoMemoria_Frutas_Coreano(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> JogoMemoria_Frutas_Coreano() ));
  }

  void _abrirJogoMemoria_Cores_Coreano(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> JogoMemoria_Cores_Coreano() ));
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff5CE6B8),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff5CE6B8),
      ),
      body: SafeArea(
          child: Column(
            children: <Widget>[
              Text(
                "JOGO DA MEMÓRIA",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 20,),
              Expanded(
                child: Stack(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40)
                        ),

                      ),
                    ),
                    ListView(
                      children: <Widget>[
                           Padding(
                             padding: EdgeInsets.all(15),
                             child: GestureDetector(
                               onTap: _abrirJogoMemoria_Numero_Coreano,
                               child: Stack(
                                 children: <Widget>[
                                   Container(
                                     height: 80,
                                     width: double.infinity,
                                     decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(30),
                                       color: Colors.green,
                                       boxShadow: [
                                         BoxShadow(
                                             blurRadius: 4,
                                             color: Colors.black45,
                                             spreadRadius: 0.5,
                                             offset: Offset(3, 4))
                                       ],
                                     ),
                                   ),
                                   Container(
                                     height: 70,
                                     width: double.infinity,
                                     decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(30),
                                       color: Colors.green[200],
                                       boxShadow: [
                                         BoxShadow(
                                             blurRadius: 4,
                                             color: Colors.black12,
                                             spreadRadius: 0.3,
                                             offset: Offset(0.5, 2))
                                       ],
                                     ),
                                     child: Center(
                                       child: Text(
                                         "NÚMEROS COREANOS",
                                         style: TextStyle(
                                             color: Colors.white,
                                             fontSize: 20,
                                             fontWeight: FontWeight.bold,
                                             shadows: [
                                               Shadow(
                                                 color: Colors.black26,
                                                 blurRadius: 2,
                                                 offset: Offset(1, 2),
                                               ),
                                               Shadow(
                                                   color: Colors.green,
                                                   blurRadius: 2,
                                                   offset: Offset(0.5, 2))
                                             ]
                                         ),
                                       ),
                                     ),
                                   ),


                                 ],
                               ),
                             ),
                           ),
                           Padding(
                             padding: EdgeInsets.all(15),
                             child: GestureDetector(
                               onTap: _abrirJogoMemoria_Frutas_Coreano,
                               child: Stack(
                                 children: <Widget>[
                                   Container(
                                     height: 80,
                                     width: double.infinity,
                                     decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(30),
                                       color: Colors.orange,
                                       boxShadow: [
                                         BoxShadow(
                                             blurRadius: 4,
                                             color: Colors.black45,
                                             spreadRadius: 0.5,
                                             offset: Offset(3, 4))
                                       ],
                                     ),
                                   ),
                                   Container(
                                     height: 70,
                                     width: double.infinity,
                                     decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(30),
                                       color: Colors.orange[200],
                                       boxShadow: [
                                         BoxShadow(
                                             blurRadius: 4,
                                             color: Colors.black12,
                                             spreadRadius: 0.3,
                                             offset: Offset(0.5, 2))
                                       ],
                                     ),
                                     child: Center(
                                       child: Text(
                                         "FRUTAS",
                                         style: TextStyle(
                                             color: Colors.white,
                                             fontSize: 20,
                                             fontWeight: FontWeight.bold,
                                             shadows: [
                                               Shadow(
                                                 color: Colors.black26,
                                                 blurRadius: 2,
                                                 offset: Offset(1, 2),
                                               ),
                                               Shadow(
                                                   color: Colors.yellow[300],
                                                   blurRadius: 2,
                                                   offset: Offset(0.5, 2))
                                             ]
                                         ),
                                       ),
                                     ),
                                   ),


                                 ],
                               ),
                             ),
                           ),
                           Padding(
                             padding: EdgeInsets.all(15),
                             child: GestureDetector(
                               onTap: _abrirJogoMemoria_Cores_Coreano,
                               child: Stack(
                                 children: <Widget>[
                                   Container(
                                     height: 80,
                                     width: double.infinity,
                                     decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(30),
                                       color: Colors.red,
                                       boxShadow: [
                                         BoxShadow(
                                             blurRadius: 4,
                                             color: Colors.black45,
                                             spreadRadius: 0.5,
                                             offset: Offset(3, 4))
                                       ],
                                     ),
                                   ),
                                   Container(
                                     height: 70,
                                     width: double.infinity,
                                     decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(30),
                                       color: Colors.red[200],
                                       boxShadow: [
                                         BoxShadow(
                                             blurRadius: 4,
                                             color: Colors.black12,
                                             spreadRadius: 0.3,
                                             offset: Offset(0.5, 2))
                                       ],
                                     ),
                                     child: Center(
                                       child: Text(
                                         "CORES",
                                         style: TextStyle(
                                             color: Colors.white,
                                             fontSize: 20,
                                             fontWeight: FontWeight.bold,
                                             shadows: [
                                               Shadow(
                                                 color: Colors.black26,
                                                 blurRadius: 2,
                                                 offset: Offset(1, 2),
                                               ),
                                               Shadow(
                                                   color: Colors.red[300],
                                                   blurRadius: 2,
                                                   offset: Offset(0.5, 2))
                                             ]
                                         ),
                                       ),
                                     ),
                                   ),


                                 ],
                               ),
                             ),
                           ),

                      ],
                    ),

                  ],
                ),
              )
            ],
          )
      ),


    );
  }
}


