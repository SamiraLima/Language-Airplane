import 'package:flutter/material.dart';
import 'package:language_airplane/Espanhol/JogoMemoria_Cores_Espanhol.dart';
import 'package:language_airplane/Espanhol/JogoMemoria_Frutas_Espanhol.dart';
import 'package:language_airplane/Espanhol/JogoMemoria_Numeros_Espanhol.dart';

class Tela_JogoMemoria_Espanhol extends StatefulWidget {
  @override
  _Tela_JogoMemoria_EspanholState createState() => _Tela_JogoMemoria_EspanholState();
}

class _Tela_JogoMemoria_EspanholState extends State<Tela_JogoMemoria_Espanhol> {
  void _abrirJogoMemoria_Numero_Espanhol(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> JogoMemoria_Numero_Espanhol() ));
  }

  void _abrirJogoMemoria_Frutas_Espanhol(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> JogoMemoria_Frutas_Espanhol() ));
  }

  void _abrirJogoMemoria_Cores_Espanhol(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> JogoMemoria_Cores_Espanhol() ));
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
                            onTap: _abrirJogoMemoria_Numero_Espanhol,
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
                                      "NÚMEROS",
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
                            onTap: _abrirJogoMemoria_Frutas_Espanhol,
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
                            onTap: _abrirJogoMemoria_Cores_Espanhol,
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

