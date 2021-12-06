import 'package:flutter/material.dart';

import 'Quiz_1_Home.dart';
class ScorePage extends StatelessWidget {
  final int score;
  final int totalQuestions;

  ScorePage(this.score, this.totalQuestions);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [
           Container(
              padding: EdgeInsets.all(115),
              decoration: BoxDecoration(
                  image: DecorationImage
                    (image: AssetImage("Imagens/Fundo_quiz.png"),
                    fit: BoxFit.fill,
                  )
              )
          ),
          SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Text(
                      ' Seu Record ',
                      style: new TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 50.0),
                    ),
                    new Text(score.toString() + "/" + totalQuestions.toString(),
                        style: new TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 50.0)),
                    SizedBox(height: 15,),

                    new Container(
                        decoration: new BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: new IconButton(
                          icon: new Icon(Icons.replay),
                          color:  Color(0xffDA70D6),
                          iconSize: 50.0,
                          onPressed: () => Navigator.of(context).pushAndRemoveUntil(
                              new MaterialPageRoute(
                                  builder: (BuildContext context) => new Quiz_1_Home()),
                                  (Route route) => route == null),
                        ))
                  ],
                ),
              ),
          ),
        ],
      ),
    );
  }
}
