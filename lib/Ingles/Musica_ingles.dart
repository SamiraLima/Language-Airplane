import 'package:flutter/material.dart';
import 'Head_musica_ingles.dart';
class Musica_ingles extends StatefulWidget {
  const Musica_ingles({Key key}) : super(key: key);

  @override
  _Musica_inglesState createState() => _Musica_inglesState();
}

class _Musica_inglesState extends State<Musica_ingles> {
  void _abrirHead_musica_ingles(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> Head_musica_ingles() ));
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
                          margin: EdgeInsets.fromLTRB(0, 24, 45, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: _abrirHead_musica_ingles,
                                  child: CircleAvatar(
                                    radius: 50,
                                    backgroundImage: NetworkImage("https://direct.rhapsody.com/imageserver/images/alb.272309519/600x600.jpg"),
                                  ),
                                ),
                                Text("Head Shoulders Knees And Toes"),
                              ],
                            ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 24, 145, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,

                            children: <Widget>[
                              GestureDetector(
                                //  onTap: _abrirQuiz,
                                  child: CircleAvatar(
                                    radius: 50,
                                    backgroundImage: NetworkImage("https://a10.gaanacdn.com/images/artists/95/125895/crop_480x480_125895.jpg"),
                                  )
                              ),
                              Text("Ed Sheeran"),
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
                          margin: EdgeInsets.fromLTRB(0, 24, 140, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,

                            children: <Widget>[
                              GestureDetector(
                                //onTap: _abrirQuiz,
                                  child:  CircleAvatar(
                                    radius: 50,
                                    backgroundImage: NetworkImage("https://s2.glbimg.com/SvQCKy-m5HIEYnNcFwb7s5vvtZc=/620x466/top/e.glbimg.com/og/ed/f/original/2021/03/11/avril-lavigne.jpg"),
                                  )
                              ),
                              Text("Avril Lavigne"),
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
                          margin: EdgeInsets.fromLTRB(0, 24, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,

                            children: <Widget>[
                              GestureDetector(
                                // onTap: _abrirQuiz,
                                  child: CircleAvatar(
                                    radius: 50,
                                    backgroundImage: NetworkImage("https://www.dealsanimg.com/d/l400/pict/232513379923_/wheels-on-the-bus-dvd-20-childrens-kids-nursery-rhymes.jpg"),
                                  )
                              ),
                              Text("Wheels on the Bus (A roda do ôbibus)"),
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
