import 'package:flutter/material.dart';
import 'tres_ursos_musica.dart';

class Musica_coreano extends StatefulWidget {
  const Musica_coreano({Key key}) : super(key: key);

  @override
  _Musica_coreanoState createState() => _Musica_coreanoState();
}

class _Musica_coreanoState extends State<Musica_coreano> {
  void _abrirTresUsos(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> tres_ursos_musica() ));
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
                          margin: EdgeInsets.fromLTRB(0, 24, 70, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              GestureDetector(
                                onTap: _abrirTresUsos,
                                child: CircleAvatar(
                                  radius: 50,
                                  backgroundImage: NetworkImage("http://2.bp.blogspot.com/_vC7rHR9oCKU/R-8lrepXvcI/AAAAAAAADaM/Y3-TMI2MR_U/s400/3bears.jpg"),
                                ),
                              ),
                              Text("곰 세 마리 (Os três ursos)")
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 24, 90, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,

                            children: <Widget>[
                              GestureDetector(
                              //  onTap: _abrirQuiz,
                                child: CircleAvatar(
                                  radius: 50,
                                  backgroundImage: NetworkImage("https://pbs.twimg.com/media/EEl_QcuXUAAQcu8.jpg"),
                                )
                              ),
                              Text("방탄소년단(BTS)"),
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
                                //onTap: _abrirQuiz,
                                child:  CircleAvatar(
                                  radius: 50,
                                  backgroundImage: NetworkImage("https://cdn130.picsart.com/302041718077211.png?type=webp&to=min&r=640"),
                                )
                              ),
                              Text("블랙핑크 (Blackpink)"),
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
                                  backgroundImage: NetworkImage("https://img1.daumcdn.net/thumb/R800x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FdEM7P8%2Fbtqw79Lp6OE%2FOdfRjqEM7za3M0D9arhIT0%2Fimg.png"),
                                )
                              ),
                              Text("멋쟁이 토마토 (Tomate elegante)"),
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
