import 'package:flutter/material.dart';
import 'Quiz_espanhol.dart';
import 'Dele_espanhol.dart';
import 'Musica_espanhol.dart';
import 'Quadrinho_espanhol.dart';
class Tela_AprendendoSeDivertindo_Espanhol extends StatefulWidget {
  @override
  _Tela_AprendendoSeDivertindo_EspanholState createState() => _Tela_AprendendoSeDivertindo_EspanholState();
}

class _Tela_AprendendoSeDivertindo_EspanholState extends State<Tela_AprendendoSeDivertindo_Espanhol> {
  void _abrirQuiz(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> Quiz_espanhol() ));
  }
  void _abrirDele(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> Dele_espanhol() ));
  }
  void _abrirQuadrinho(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> Quadrinho_espanhol() ));
  }
  void _abrirMusica(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> Musica_espanhol() ));
  }
  @override
  Widget build(BuildContext context) {
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
                                  "Imagens/quiz_espanhol.png",
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
                                  "Imagens/musica_espanhol.png",
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
                                  "Imagens/quadrinho_espanhol.png",
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
                                onTap: _abrirDele,
                                child: Image.asset(
                                  "Imagens/exam_espanhol.png",
                                  width: 80,
                                  height: 80,
                                ),
                              ),
                              Text("Aprendendo com o Dele")
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
