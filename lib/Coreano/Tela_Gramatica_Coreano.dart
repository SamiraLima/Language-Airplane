import 'package:flutter/material.dart';
import 'Introducao_Coreano.dart';

class Tela_Gramatica_Coreano extends StatefulWidget {
  @override
  _Tela_Gramatica_CoreanoState createState() => _Tela_Gramatica_CoreanoState();
}

class _Tela_Gramatica_CoreanoState extends State<Tela_Gramatica_Coreano> {
  void _abrirIntroducao(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> Introducao_Coreano() ));
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffDA70D6),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffDA70D6),
      ),
      body: SafeArea(
          child: Column(
            children: <Widget>[
              Text(
                "GRAMÁTICA",
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
                            height: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.grey,
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: <Widget>[
                                Container(
                                  height: 118,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Color(0xffF0F8FF),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: _abrirIntroducao,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 10),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        SizedBox(height: 20),
                                        Text(
                                          "Introdução",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18
                                          ),
                                        ),
                                        SizedBox(height: 6),
                                        Text(
                                          "Nesse tópico você íra aprender alguns pontos ",
                                          style: TextStyle(
                                              fontSize: 14
                                          ),
                                        ),
                                        Text(
                                          "importantes antes de começar a aprender as regras gramáticais.",
                                          style: TextStyle(
                                              fontSize: 14
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                            height: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.grey,
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: <Widget>[
                                Container(
                                  height: 118,
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
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(height: 30),
                                      Text(
                                        "Autoapresentação",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18
                                        ),
                                      ),
                                      SizedBox(height: 6),
                                      Text(
                                        "Nesse tópico você íra aprender a como fazer uma autoapresentação simples em coreano.",
                                        style: TextStyle(
                                            fontSize: 14
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                            height: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.grey,
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: <Widget>[
                                Container(
                                  height: 118,
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
                                  padding: EdgeInsets.only(left: 10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(height: 25),
                                      Text(
                                        "Verbo ser (이다)",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18
                                        ),
                                      ),
                                      SizedBox(height: 6),
                                      Text(
                                        "Nesse tópico você íra aprender qual é o verbo ser e como utiliza-lo.",
                                        style: TextStyle(
                                            fontSize: 14
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                            height: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.grey,
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: <Widget>[
                                Container(
                                  height: 118,
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
                                  padding: EdgeInsets.only(left: 10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(height: 25),
                                      Text(
                                        "Verbo não ser (아니다)",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18
                                        ),
                                      ),
                                      SizedBox(height: 6),
                                      Text(
                                        "Nesse tópico você íra aprender qual é o verbo não ser e como utiliza-lo.",
                                        style: TextStyle(
                                            fontSize: 14
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                            height: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.grey,
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: <Widget>[
                                Container(
                                  height: 118,
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
                                  padding: EdgeInsets.only(left: 10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(height: 25),
                                      Text(
                                        "Partícula 는/은(partícula de tópico)",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18
                                        ),
                                      ),
                                      SizedBox(height: 6),
                                      Text(
                                        "Nesse tópico você íra aprender quais são as partículas de tópicos e como elas são utilizadas.",
                                        style: TextStyle(
                                            fontSize: 14
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
