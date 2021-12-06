import 'package:flutter/material.dart';
import 'LeaoRato_livro.dart';
class Tela_Leitura_Ingles extends StatefulWidget {
  @override
  _Tela_Leitura_InglesState createState() => _Tela_Leitura_InglesState();
}

class _Tela_Leitura_InglesState extends State<Tela_Leitura_Ingles> {
  void _abrirLivro_LeaoRato(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> LeaoRato_livro() ));
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
                "LEITURA",
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
                          height: 150,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.grey,
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: <Widget>[
                              Container(
                                height: 148,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Color(0xffF0F8FF)
                                ),
                              ),
                              Positioned(
                                right: 0,
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 50),
                                  height: 130,
                                  child: GestureDetector(
                                    onTap: _abrirLivro_LeaoRato,
                                    child: Image.asset(
                                      "Imagens/leao.jpg",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                left: 0,
                                child: SizedBox(
                                  height: 120,
                                  width: size.width-200,
                                  child: GestureDetector(
                                    onTap: _abrirLivro_LeaoRato,
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                            "The Lion and",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold
                                            )
                                        ),
                                        Text("the Mouse",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold
                                            )
                                        ),
                                        Text("(O leão e",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold
                                            )
                                        ),
                                        Text("o Rato)",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold
                                            )
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                          height: 150,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.grey,
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: <Widget>[
                              Container(
                                height: 148,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Color(0xffF0F8FF)
                                ),
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(Icons.lock),
                                  ],
                                ),
                                height: 148,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Color(0xFFB3C2E7),
                                ),
                              ),
                              Positioned(
                                right: 0,
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 50),
                                  height: 130,
                                  child: Image.asset(
                                    "Imagens/rapunzel.jpg",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                left: 0,
                                child: SizedBox(
                                  height: 100,
                                  width: size.width-200,
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                          "Rapunzel",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold
                                          )
                                      ),
                                      Text("(Rapunzel)",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold
                                          )
                                      ),

                                    ],
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                          height: 150,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.grey,
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: <Widget>[
                              Container(
                                height: 148,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Color(0xffF0F8FF)
                                ),
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(Icons.lock),
                                  ],
                                ),
                                height: 148,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Color(0xFFB3C2E7),
                                ),
                              ),
                              Positioned(
                                right: 0,
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 50),
                                  height: 130,
                                  child: Image.asset(
                                    "Imagens/jack.jpg",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                left: 0,
                                child: SizedBox(
                                  height: 120,
                                  width: size.width-200,
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                          "Jack and",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold
                                          )
                                      ),
                                      Text(
                                          "the Beanstalk",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold
                                          )
                                      ),
                                      Text("(João e o ",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold
                                          )
                                      ),
                                      Text("Pé de Feijão)",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold
                                          )
                                      ),

                                    ],
                                  ),
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
