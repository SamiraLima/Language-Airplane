import 'package:flutter/material.dart';
import 'Livro_LebreTartaruga.dart';

class Tela_Leitura_Coreano extends StatefulWidget {
  @override
  _Tela_Leitura_CoreanoState createState() => _Tela_Leitura_CoreanoState();
}

class _Tela_Leitura_CoreanoState extends State<Tela_Leitura_Coreano> {

  void _abrirLivro_LebreTartaruga(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> Livro_LebreTartaruga() ));
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
                            color: Colors.grey[600],
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: <Widget>[
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
                                    child: GestureDetector(
                                      child: Image.asset(
                                        "Imagens/alice.jpg",
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
                                      child: Column(
                                        children: <Widget>[
                                          Text(
                                              "이상한나라의",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold
                                              )
                                          ),
                                          Text("앨리스",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold
                                              )
                                          ),
                                          Text("(Alice no",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold
                                              )
                                          ),
                                          Text("País das Maravilhas)",
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
                            color: Colors.grey[600],
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: <Widget>[
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Icon(Icons.lock),
                                  ],
                                ),
                                height: 148,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Color(0xFFB3C2E7)
                                ),
                              ),
                              Positioned(
                                right: 0,
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 50),
                                  height: 130,
                                  child: Image.asset(
                                    "Imagens/chapeuzinho.png",
                                    fit: BoxFit.cover,
                                    height: 99,
                                    width: 99,
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
                                          "빨간 모자",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold
                                          )
                                      ),
                                      Text("(Chapéuzinho",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold
                                          )
                                      ),
                                      Text("Vermelho)",
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
                              Positioned(
                                right: 0,
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 50),
                                  height: 130,
                                  child: GestureDetector(
                                    onTap: _abrirLivro_LebreTartaruga,
                                    child: Image.asset(
                                      "Imagens/coelho_tartaruga.jpg",
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
                                    onTap: _abrirLivro_LebreTartaruga,
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                            "토끼와 거북이",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold
                                            )
                                        ),
                                        Text("(A Lebre e",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold
                                            )
                                        ),
                                        Text("a Tartaruga)",
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
