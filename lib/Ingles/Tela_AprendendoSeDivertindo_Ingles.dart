import 'package:flutter/material.dart';
import 'Quiz_ingles.dart';
import 'Musica_ingles.dart';
import 'Toelf_ingles.dart';
import 'Quadrinho_Ingles.dart';
class Tela_AprendendoSeDivertindo_Ingles extends StatefulWidget {
  @override
  _Tela_AprendendoSeDivertindo_InglesState createState() => _Tela_AprendendoSeDivertindo_InglesState();
}

class _Tela_AprendendoSeDivertindo_InglesState extends State<Tela_AprendendoSeDivertindo_Ingles> {
  void _abrirQuiz(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> Quiz_ingles() ));
  }
  void _abrirMusica(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> Musica_ingles() ));
  }
  void _abrirQuadrinho(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> Quadrinho_Ingles() ));
  }
  void _abrirToelf(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> Toelf_ingles() ));
  }
  @override
  Widget build(BuildContext context) {
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
                "APRENDA SE DIVERTINDO",
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
                          margin: EdgeInsets.fromLTRB(0, 24, 150, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              GestureDetector(
                                onTap: _abrirQuiz,
                                child: Image.asset(
                                  "Imagens/quiz_ingles.png",
                                  width: 80,
                                  height: 80,
                                ),
                              ),
                              Text("Quiz")
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 24, 32, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,

                            children: <Widget>[
                              GestureDetector(
                                onTap: _abrirMusica,
                                child: Image.asset(
                                  "Imagens/musica_ingles.png",
                                  width: 80,
                                  height: 80,
                                ),
                              ),
                              Text("Aprendendo com Música")
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 24, 20, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,

                            children: <Widget>[
                              GestureDetector(
                                onTap: _abrirQuadrinho,
                                child: Image.asset(
                                  "Imagens/quadrinho_ingles.png",
                                  width: 80,
                                  height: 80,
                                ),
                              ),
                              Text("Aprendendo com Quadrinhos")
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 24, 40, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,

                            children: <Widget>[
                              GestureDetector(
                                onTap: _abrirToelf,
                                child: Image.asset(
                                  "Imagens/exame_ingles.png",
                                  width: 80,
                                  height: 80,
                                ),
                              ),
                              Text("Aprendendo com o Toelf")
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
