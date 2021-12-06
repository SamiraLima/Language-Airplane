import 'package:flutter/material.dart';
import 'package:language_airplane/Coreano/Vogais_Simples_Coreano.dart';

class Tela_Alfabeto_Coreano extends StatefulWidget {
  @override
  _Tela_Alfabeto_CoreanoState createState() => _Tela_Alfabeto_CoreanoState();
}

class _Tela_Alfabeto_CoreanoState extends State<Tela_Alfabeto_Coreano> {

  void _abrirVogais_Simples_Coreano(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> Vogais_Simples_Coreano() ));
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
                              onTap: _abrirVogais_Simples_Coreano,
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
                                        "Vogais Simples",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18
                                        ),
                                      ),
                                      SizedBox(height: 6,),
                                      Text(
                                        "Nesse tópico você ira aprender quais são as ",
                                        style: TextStyle(
                                            fontSize: 14
                                        ),
                                      ),
                                      Text(
                                        "vogais simples, como se escreve e o som delas.",
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
                                  padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
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
                                        "Nesse tópico você ira aprender quais são ",
                                        style: TextStyle(
                                            fontSize: 14
                                        ),
                                      ),
                                      Text(
                                        "as consoantes como se escreve e o som delas.",
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
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(height: 20,),
                                      Text(
                                        "Vogais Compostas",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18
                                        ),
                                      ),
                                      SizedBox(height: 6,),
                                      Text(
                                        "Nesse tópico você ira aprender quais são as ",
                                        style: TextStyle(
                                            fontSize: 14
                                        ),
                                      ),
                                      Text(
                                        "vogais compostas como se escreve e o som delas.",
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
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(height: 20,),
                                      Text(
                                        "Consoantes Aspiradas",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18
                                        ),
                                      ),
                                      SizedBox(height: 6,),
                                      Text(
                                        "Nesse tópico você ira aprender quais são as ",
                                        style: TextStyle(
                                            fontSize: 14
                                        ),
                                      ),
                                      Text(
                                        "consoantes aspiradas como se escreve e o som delas.",
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
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(height: 20,),
                                      Text(
                                        "Consoantes Duplas/Duras",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18
                                        ),
                                      ),
                                      SizedBox(height: 6,),
                                      Text(
                                        "Nesse tópico você ira aprender quais são as ",
                                        style: TextStyle(
                                            fontSize: 14
                                        ),
                                      ),
                                      Text(
                                        "consoantes duplas/duras como se escreve e o som delas.",
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

