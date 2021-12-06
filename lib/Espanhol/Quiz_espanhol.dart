import 'package:flutter/material.dart';
import 'package:language_airplane/Quiz_Espanhol/Quiz_1_Home.dart';
class Quiz_espanhol extends StatefulWidget {
  const Quiz_espanhol({Key key}) : super(key: key);

  @override
  _Quiz_espanholState createState() => _Quiz_espanholState();
}

class _Quiz_espanholState extends State<Quiz_espanhol> {
  void _abrirQuiz_1_Home(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> Quiz_1_Home() ));
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
              "QUIZ",
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
                          padding: EdgeInsets.all(15),
                          child: GestureDetector(
                            onTap: _abrirQuiz_1_Home,
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  height: 80,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.purple,
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
                                    color: Colors.purple[200],
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
                                      "QUIZ 1",
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
                                                color: Colors.purple,
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
                            onTap: (){},
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  height: 80,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.grey,
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
                                    color: Colors.grey,
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
                                      "QUIZ 2",
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
                                                color: Colors.grey,
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
                            onTap: (){},
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  height: 80,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.grey,
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
                                    color: Colors.grey,
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
                                      "QUIZ 3",
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
                                                color: Colors.grey,
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
