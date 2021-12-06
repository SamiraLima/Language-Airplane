import 'package:flutter/material.dart';
import 'Monica_ingles.dart';

class Quadrinho_Ingles extends StatefulWidget {
  const Quadrinho_Ingles({Key key}) : super(key: key);

  @override
  _Quadrinho_InglesState createState() => _Quadrinho_InglesState();
}

class _Quadrinho_InglesState extends State<Quadrinho_Ingles> {
  void _abrirMonica(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> Monica_ingles() ));
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
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 24, 150, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              GestureDetector(
                                onTap: _abrirMonica,
                                child: CircleAvatar(
                                  radius: 50,
                                  backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/pt/8/8e/Turma_da_M%C3%B4nica.jpg"),
                                ),
                              ),
                              Text("Monica’s Gang!")
                            ],
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
                              Text("The Smurfs"),
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
                          margin: EdgeInsets.fromLTRB(0, 24, 150, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,

                            children: <Widget>[
                              GestureDetector(
                                //onTap: _abrirQuiz,
                                  child:  CircleAvatar(
                                    radius: 50,
                                    backgroundImage: NetworkImage("https://i.annihil.us/u/prod/marvel/i/mg/d/d0/57080c4947049/standard_incredible.jpg"),
                                  )
                              ),
                              Text("Star Wars"),
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
                          margin: EdgeInsets.fromLTRB(0, 24, 170, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,

                            children: <Widget>[
                              GestureDetector(
                                // onTap: _abrirQuiz,
                                  child: CircleAvatar(
                                    radius: 50,
                                    backgroundImage: NetworkImage("https://observatoriodocinema.uol.com.br/wp-content/uploads/2019/07/painel-festa-2x1m-x-men-festa-de-aniversario.jpg"),
                                  )
                              ),
                              Text("X-Men"),
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
