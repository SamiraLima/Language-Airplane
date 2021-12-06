import 'package:flutter/material.dart';
import 'package:language_airplane/Espanhol/Si_tu_Tienes_espanhol.dart';


class Musica_espanhol extends StatefulWidget {
  const Musica_espanhol({Key key}) : super(key: key);

  @override
  _Musica_espanholState createState() => _Musica_espanholState();
}

class _Musica_espanholState extends State<Musica_espanhol> {
  void _abrirSi_tu_Tienes(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> Si_tu_Tienes_espanhol() ));
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
                "APRENDENDO COM MÚSICA",
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
                          margin: EdgeInsets.fromLTRB(0, 24, 10, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              GestureDetector(
                                onTap: _abrirSi_tu_Tienes,
                                child: CircleAvatar(
                                  radius: 50,
                                  backgroundImage: NetworkImage("https://i.pinimg.com/474x/7a/88/30/7a883044a80ab35872bacddff6e051de.jpg"),
                                ),
                              ),
                              Text("Si tú Tienes Muchas Ganas de Aplaudir", style: TextStyle(fontSize: 14),)
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 24, 190, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,

                            children: <Widget>[
                              GestureDetector(
                                //  onTap: _abrirQuiz,
                                  child: CircleAvatar(
                                    radius: 50,
                                    backgroundImage: NetworkImage("https://www.estrelando.com.br/uploads/2019/12/23/rbd-1577130279.jpg"),
                                  )
                              ),
                              Text("RBD"),
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
                          margin: EdgeInsets.fromLTRB(0, 24, 180, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,

                            children: <Widget>[
                              GestureDetector(
                                //onTap: _abrirQuiz,
                                  child:  CircleAvatar(
                                    radius: 50,
                                    backgroundImage: NetworkImage("https://studiosol-a.akamaihd.net/uploadfile/letras/fotos/b/e/9/d/be9dc4de387974c24c9acb541fddb374.jpg"),
                                  )
                              ),
                              Text("CNCO"),
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
                          margin: EdgeInsets.fromLTRB(0, 24, 70, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,

                            children: <Widget>[
                              GestureDetector(
                                // onTap: _abrirQuiz,
                                  child: CircleAvatar(
                                    radius: 50,
                                    backgroundImage: NetworkImage("https://i.ytimg.com/vi/7hyDbcnV30w/maxresdefault.jpg"),
                                  )
                              ),
                              Text("Estrellita ¿Dónde Estás?"),
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
