import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Topik_coreano extends StatefulWidget {
  const Topik_coreano({Key key}) : super(key: key);

  @override
  _Topik_coreanoState createState() => _Topik_coreanoState();
}

class _Topik_coreanoState extends State<Topik_coreano> {
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
              "APRENDENDO COM O TOPIK",
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
                            onTap: () => launch("https://www.topikguide.com/previous-papers/"),
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
                                      "Download Topik ",
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
                            onTap: () => launch("https://studytopik.go.kr/sub-1/link_url.asp?ma_url=sub_1"),
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
                                      "Simulados",
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
