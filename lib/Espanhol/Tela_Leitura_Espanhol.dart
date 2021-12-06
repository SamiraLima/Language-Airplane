import 'package:flutter/material.dart';
import 'volando_alto_livro.dart';

class Tela_Leitura_Espanhol extends StatefulWidget {
  @override
  _Tela_Leitura_EspanholState createState() => _Tela_Leitura_EspanholState();
}

class _Tela_Leitura_EspanholState extends State<Tela_Leitura_Espanhol> {
  void _abrirLivro_VoandoAlto(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> volando_alto_livro() ));
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
                                    onTap: (){
                                      _abrirLivro_VoandoAlto();
                                    },
                                    child: Image.asset(
                                      "Imagens/volando.png",
                                      width: 130,
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
                                    onTap: _abrirLivro_VoandoAlto,
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                            "Volando",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold
                                            )
                                        ),
                                        Text("Alto",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold
                                            )
                                        ),
                                        Text("(Voando",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold
                                            )
                                        ),
                                        Text("Alto)",
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
                                    "Imagens/formiga.jpg",
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
                                          "La Cigarra y",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold
                                          )
                                      ),
                                      Text(
                                          "la Hormiga",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold
                                          )
                                      ),
                                      Text("(A Cigarra e",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold
                                          )
                                      ),
                                      Text("a Formiga)",
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
                                    "Imagens/perro.jpg",
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
                                          "El Lobo y",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold
                                          )
                                      ),
                                      Text(
                                          "el Perro",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold
                                          )
                                      ),
                                      Text("(O Lobo e",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold
                                          )
                                      ),
                                      Text("o Cachorro)",
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
