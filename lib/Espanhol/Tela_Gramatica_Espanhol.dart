import 'package:flutter/material.dart';
import 'Artigos_espanhol.dart';

class Tela_Gramatica_Espanhol extends StatefulWidget {
  @override
  _Tela_Gramatica_EspanholState createState() => _Tela_Gramatica_EspanholState();
}

class _Tela_Gramatica_EspanholState extends State<Tela_Gramatica_Espanhol> {
  void _abrirArtigos(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> Artigos_espanhol() ));
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffFFA07A),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffFFA07A),
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
                    ListView(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.grey,
                          ),
                          child: GestureDetector(
                            onTap: _abrirArtigos,
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
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 0, 70, 0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(height: 20),
                                      Text(
                                        "Artigos e suas Contrações",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18
                                        ),
                                      ),
                                      SizedBox(height: 6),
                                      Text(
                                        "Nesse tópico você ira aprender quais os ",
                                        style: TextStyle(
                                            fontSize: 14
                                        ),
                                      ),
                                      Text(
                                        "artigos em espanhol e suas contrações.",
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
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(290, 0, 0, 0),
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
                                padding: const EdgeInsets.fromLTRB(0, 0, 70, 0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(height: 20,),
                                    Text(
                                      "Pronomes Pessoais",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18
                                      ),
                                    ),
                                    SizedBox(height: 6,),
                                    Text(
                                      "Nesse tópico você ira aprender quais os",
                                      style: TextStyle(
                                          fontSize: 14
                                      ),
                                    ),
                                    Text(
                                      "pronomes pessoais em espanhol.",
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
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(290, 0, 0, 0),
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
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(height: 20,),
                                  Text(
                                    "Pronomes Indefinidos e Demonstrativos",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18
                                    ),
                                  ),
                                  SizedBox(height: 6,),
                                  Text(
                                    "Nesse tópico você ira aprender quais são os ",
                                    style: TextStyle(
                                        fontSize: 14
                                    ),
                                  ),
                                  Text(
                                    "pronomes indefinidos e demonstrativos.",
                                    style: TextStyle(
                                        fontSize: 14
                                    ),
                                  )
                                ],
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
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(290, 0, 0, 0),
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
                                padding: const EdgeInsets.fromLTRB(0, 0, 40, 0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(height: 20,),
                                    Text(
                                      "Adjetivos e Pronomes Possessivos",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18
                                      ),
                                    ),
                                    SizedBox(height: 6,),
                                    Text(
                                      "Nesse tópico você ira aprender quais são os ",
                                      style: TextStyle(
                                          fontSize: 14
                                      ),
                                    ),
                                    Text(
                                      "adjetivos e pronomes possessivos.",
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
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(290, 0, 0, 0),
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
                                padding: const EdgeInsets.fromLTRB(0, 0, 40, 0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(height: 20,),
                                    Text(
                                      "Pronomes Interrogativos",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18
                                      ),
                                    ),
                                    SizedBox(height: 6,),
                                    Text(
                                      "Nesse tópico você ira aprender quais são os ",
                                      style: TextStyle(
                                          fontSize: 14
                                      ),
                                    ),
                                    Text(
                                      "pronomes interrogativos.",
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


                  ],
                ),
              )
            ],
          )
      ),
    );
  }
}
