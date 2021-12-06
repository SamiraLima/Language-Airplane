import 'package:flutter/material.dart';
import 'package:language_airplane/Coreano/Manga1_coreano.dart';
class Quadrinhos_coreano extends StatefulWidget {
  const Quadrinhos_coreano({Key key}) : super(key: key);

  @override
  _Quadrinhos_coreanoState createState() => _Quadrinhos_coreanoState();
}

class _Quadrinhos_coreanoState extends State<Quadrinhos_coreano> {
  void _abrirManga1(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> Manga1_coreano() ));
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
                          margin: EdgeInsets.fromLTRB(0, 24, 180, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              GestureDetector(
                                onTap: _abrirManga1,
                                child: CircleAvatar(
                                  radius: 50,
                                  backgroundImage: NetworkImage("https://pbs.twimg.com/media/D8s6avBUwAE4siy.jpg"),
                                ),
                              ),
                              Text("여신강림")
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 24,60, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,

                            children: <Widget>[
                              GestureDetector(
                                //  onTap: _abrirQuiz,
                                  child: CircleAvatar(
                                    radius: 50,
                                    backgroundImage: NetworkImage("https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1619877512i/57910272._UY630_SR1200,630_.jpg"),
                                  )
                              ),
                              Text("중매쟁이 아가 황녀님"),
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
                          margin: EdgeInsets.fromLTRB(0, 24, 90, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,

                            children: <Widget>[
                              GestureDetector(
                                //onTap: _abrirQuiz,
                                  child:  CircleAvatar(
                                    radius: 50,
                                    backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbUIBOFmQrDO4_fZyw5rHvORRlb2Yh0wpfkA&usqp=CAU"),
                                  )
                              ),
                              Text("반드시 해피엔딩"),
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
                                    backgroundImage: NetworkImage("https://i.pinimg.com/originals/65/31/38/653138179f4750419f813baf079e80a1.jpg"),
                                  )
                              ),
                              Text("화양연화<Save me>"),
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
