import 'package:flutter/material.dart';
import 'package:language_airplane/Coreano/Quiz_Coreano.dart';
import 'Musica_coreano.dart';
import 'Quadrinhos_coreano.dart';
import 'Topik_coreano.dart';
class Tela_AprendendoSeDivertindo_Coreano extends StatefulWidget {
  @override
  _Tela_AprendendoSeDivertindo_CoreanoState createState() => _Tela_AprendendoSeDivertindo_CoreanoState();
}

class _Tela_AprendendoSeDivertindo_CoreanoState extends State<Tela_AprendendoSeDivertindo_Coreano> {
  void _abrirQuiz(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> Quiz_Coreano() ));
  }
  void _abrirMusica(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> Musica_coreano() ));
  }
  void _abrirQuadrinhos(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> Quadrinhos_coreano() ));
  }
  void _abrirTopik(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> Topik_coreano() ));
  }
  @override
  Widget build(BuildContext context) {
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
                                  "Imagens/quiz_coreano.png",
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
                                  "Imagens/musica_coreano.png",
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
                                onTap: _abrirQuadrinhos,
                                child: Image.asset(
                                  "Imagens/quadrinho_coreano.png",
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
                                onTap: _abrirTopik,
                                child: Image.asset(
                                  "Imagens/prova_coreano.png",
                                  width: 80,
                                  height: 80,
                                ),
                              ),
                              Text("Aprendendo com o Topik")
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
