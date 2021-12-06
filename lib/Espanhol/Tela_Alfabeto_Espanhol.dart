import 'package:flutter/material.dart';
import 'Alfabeto_Digrafos_espanhol.dart';

class Tela_Alfabeto_Espanhol extends StatefulWidget {
  @override
  _Tela_Alfabeto_EspanholState createState() => _Tela_Alfabeto_EspanholState();
}

class _Tela_Alfabeto_EspanholState extends State<Tela_Alfabeto_Espanhol> {
  void _abrirAlfabetoedigrafos(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> Alfabeto_Digrafos_espanhol() ));
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
                "ALFABETO",
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
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: ListView(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.grey,
                            ),
                            child: GestureDetector(
                              onTap: _abrirAlfabetoedigrafos,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Container(
                                    height: 98,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Color(0xffF0F8FF),
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(height: 20,),
                                      Text(
                                        "Alfabeto e Dígrafos",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18
                                        ),
                                      ),
                                      SizedBox(height: 6,),
                                      Text(
                                        "Nesse tópico você íra aprender quais são as ",
                                        style: TextStyle(
                                            fontSize: 14
                                        ),
                                      ),
                                      Text(
                                        "letras do alfabeto espanhol e o que é os dígrafos",
                                        style: TextStyle(
                                            fontSize: 14
                                        ),
                                      )
                                    ],
                                  ),

                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.grey,
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: <Widget>[
                                Container(
                                  height: 98,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Color(0xffF0F8FF),
                                  ),
                                ),
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(290, 0, 0, 50),
                                    child: Row(
                                      children: [
                                        Icon(Icons.lock),
                                      ],
                                    ),
                                  ),
                                  height: 148,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Color(0xFFB3C2E7),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 0, 60, 0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(height: 20,),
                                      Text(
                                        "Vogais",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18
                                        ),
                                      ),
                                      SizedBox(height: 6,),
                                      Text(
                                        "Nesse tópico você íra aprender qual a ",
                                        style: TextStyle(
                                            fontSize: 14
                                        ),
                                      ),
                                      Text(
                                        "pronúncia das vogais em espanhol",
                                        style: TextStyle(
                                            fontSize: 14
                                        ),
                                      )
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.grey,
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: <Widget>[
                                Container(
                                  height: 98,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Color(0xffF0F8FF),
                                  ),
                                ),
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(290, 0, 0, 50),
                                    child: Row(
                                      children: [
                                        Icon(Icons.lock),
                                      ],
                                    ),
                                  ),
                                  height: 148,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Color(0xFFB3C2E7),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(height: 20,),
                                      Text(
                                        "Consoantes",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18
                                        ),
                                      ),
                                      SizedBox(height: 6,),
                                      Text(
                                        "Nesse tópico você íra aprender qual a ",
                                        style: TextStyle(
                                            fontSize: 14
                                        ),
                                      ),
                                      Text(
                                        "pronúncia das consoantes em espanhol",
                                        style: TextStyle(
                                            fontSize: 14
                                        ),
                                      )
                                    ],
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
              )
            ],
          )
      ),
    );
  }
}
