import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Dele_espanhol extends StatefulWidget {
  const Dele_espanhol({Key key}) : super(key: key);

  @override
  _Dele_espanholState createState() => _Dele_espanholState();
}

class _Dele_espanholState extends State<Dele_espanhol> {
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
              "APRENDENDO COM O DELE",
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
                        Padding(
                          padding: EdgeInsets.fromLTRB(15, 35, 15, 20),
                          child: GestureDetector(
                            onTap: () => launch("https://examenes.cervantes.es/es/dele/preparar-prueba"),
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  height: 80,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.red,
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 4,
                                          color: Colors.black45,
                                          spreadRadius: 0.5,
                                          offset: Offset(3, 4))
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 70,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.red[200],
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 4,
                                          color: Colors.black12,
                                          spreadRadius: 0.3,
                                          offset: Offset(0.5, 2))
                                    ],
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Modelos de exames",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          shadows: [
                                            Shadow(
                                              color: Colors.black26,
                                              blurRadius: 2,
                                              offset: Offset(1, 2),
                                            ),
                                            Shadow(
                                                color: Colors.red,
                                                blurRadius: 2,
                                                offset: Offset(0.5, 2))
                                          ]
                                      ),
                                    ),
                                  ),
                                ),


                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(15),

                          child: GestureDetector(
                            onTap: () => launch("https://www.cervantes.to/brazilian/test_inicial.html"),
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  height: 80,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.green,
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 4,
                                          color: Colors.black45,
                                          spreadRadius: 0.5,
                                          offset: Offset(3, 4))
                                    ],
                                  ),
                                ),

                                Container(
                                  height: 70,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.green[200],
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 4,
                                          color: Colors.black12,
                                          spreadRadius: 0.3,
                                          offset: Offset(0.5, 2))
                                    ],
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Prova de Nível",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          shadows: [
                                            Shadow(
                                              color: Colors.black26,
                                              blurRadius: 2,
                                              offset: Offset(1, 2),
                                            ),
                                            Shadow(
                                                color: Colors.green,
                                                blurRadius: 2,
                                                offset: Offset(0.5, 2))
                                          ]
                                      ),
                                    ),
                                  ),
                                ),


                              ],
                            ),
                          ),
                        ),


                      ],
                    ),
                  ],
                )
            ),
          ],
        ),
      ),
    );
  }
}
