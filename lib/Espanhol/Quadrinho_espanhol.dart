import 'package:flutter/material.dart';
import 'Monica_espanhol.dart';

class Quadrinho_espanhol extends StatefulWidget {
  const Quadrinho_espanhol({Key key}) : super(key: key);

  @override
  _Quadrinho_espanholState createState() => _Quadrinho_espanholState();
}

class _Quadrinho_espanholState extends State<Quadrinho_espanhol> {
  void _abrirMonica(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> Monica_espanhol() ));
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
                "APRENDENDO COM QUADRINHOS",
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
                        GestureDetector(
                          onTap: _abrirMonica,
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0, 24, 110, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                GestureDetector(
                                  //onTap: _abrirQuiz,
                                  child: CircleAvatar(
                                    radius: 50,
                                    backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/pt/8/8e/Turma_da_M%C3%B4nica.jpg"),
                                  ),
                                ),
                                Text("Mónica y sus amigos")
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 24, 140, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,

                            children: <Widget>[
                              GestureDetector(
                                //  onTap: _abrirQuiz,
                                  child: CircleAvatar(
                                    radius: 50,
                                    backgroundImage: NetworkImage("https://m.media-amazon.com/images/M/MV5BZDE3YjY5MzEtYzJlYS00ZjgyLWIzYWUtZmU4Mjk4Y2JhOTQwXkEyXkFqcGdeQXVyNTE1NjY5Mg@@._V1_.jpg"),
                                  )
                              ),
                              Text("Los Pitufos"),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Row(
                                  children: [
                                    Icon(Icons.lock),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 24, 160, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,

                            children: <Widget>[
                              GestureDetector(
                                //onTap: _abrirQuiz,
                                  child:  CircleAvatar(
                                    radius: 50,
                                    backgroundImage: NetworkImage("https://minilua.com/wp-content/uploads/2019/08/Garfield.jpg"),
                                  )
                              ),
                              Text("Garfield"),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Row(
                                  children: [
                                    Icon(Icons.lock),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 24, 160, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,

                            children: <Widget>[
                              GestureDetector(
                                // onTap: _abrirQuiz,
                                  child: CircleAvatar(
                                    radius: 50,
                                    backgroundImage: NetworkImage("https://images-na.ssl-images-amazon.com/images/I/814S2GgPNOL.png"),
                                  )
                              ),
                              Text("Snoopy"),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Row(
                                  children: [
                                    Icon(Icons.lock),
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
