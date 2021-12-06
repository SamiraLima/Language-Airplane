import 'package:flutter/material.dart';
import 'Pronome_pessoal_ingles.dart';

class Tela_Gramatica_Ingles extends StatefulWidget {
  @override
  _Tela_Gramatica_InglesState createState() => _Tela_Gramatica_InglesState();
}

class _Tela_Gramatica_InglesState extends State<Tela_Gramatica_Ingles> {
  void _abrirpronomePessoal(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> Pronome_pessoal_ingles() ));
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff87CEEB),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff87CEEB),
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
                            onTap: _abrirpronomePessoal,
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
                                  padding: const EdgeInsets.fromLTRB(0, 0, 40, 0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(height: 20),
                                      Text(
                                        "Pronome Pessoal",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18
                                        ),
                                      ),
                                      SizedBox(height: 6),
                                      Text(
                                        "Nesse tópico você ira aprender quais são ",
                                        style: TextStyle(
                                            fontSize: 14
                                        ),
                                      ),
                                      Text(
                                        "os pronomes pessoais.",
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
                                padding: const EdgeInsets.fromLTRB(0, 0, 40, 0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(height: 20,),
                                    Text(
                                      "Pronome Possessivo",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18
                                      ),
                                    ),
                                    SizedBox(height: 6,),
                                    Text(
                                      "Nesse tópico você ira aprender quais são",
                                      style: TextStyle(
                                          fontSize: 14
                                      ),
                                    ),
                                    Text(
                                      "os pronomes possessivos.",
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
                                padding: const EdgeInsets.fromLTRB(0, 0, 40, 0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(height: 20,),
                                    Text(
                                      "Pronomes Demonstrativos",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18
                                      ),
                                    ),
                                    SizedBox(height: 6,),
                                    Text(
                                      "Nesse tópico você ira aprender quais são",
                                      style: TextStyle(
                                          fontSize: 14
                                      ),
                                    ),
                                    Text(
                                      "os pronomes demonstrativos.",
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
                                padding: const EdgeInsets.fromLTRB(0, 0, 40, 0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(height: 20,),
                                    Text(
                                      "Pronome Interrogativo",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18
                                      ),
                                    ),
                                    SizedBox(height: 6,),
                                    Text(
                                      "Nesse tópico você ira aprender quais são",
                                      style: TextStyle(
                                          fontSize: 14
                                      ),
                                    ),
                                    Text(
                                      "os pronome interrogativo",
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
                                padding: const EdgeInsets.fromLTRB(0, 0, 60, 0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(height: 20,),
                                    Text(
                                      "Verbo To Be",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18
                                      ),
                                    ),
                                    SizedBox(height: 6,),
                                    Text(
                                      "Nesse tópico você ira aprender o que ",
                                      style: TextStyle(
                                          fontSize: 14
                                      ),
                                    ),
                                    Text(
                                      "é o verbo to be.",
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
