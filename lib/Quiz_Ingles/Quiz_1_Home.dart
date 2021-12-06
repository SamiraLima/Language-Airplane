import 'package:flutter/material.dart';
import 'Quiz_page.dart';
class Quiz_1_Home extends StatefulWidget {
  const Quiz_1_Home({Key key}) : super(key: key);

  @override
  _Quiz_1_HomeState createState() => _Quiz_1_HomeState();
}

class _Quiz_1_HomeState extends State<Quiz_1_Home> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
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
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(flex: 2), //2/6
                  Text(
                    "Vamos jogar um Quiz!",
                    style: Theme.of(context).textTheme.headline4.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),

                  Spacer(), // 1/6
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => QuizPage()
                          )
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(20 * 0.75), // 15
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xffDA70D6), Color(0xFF00FFCB)],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      child: Text(
                        "Vamos Começar",
                        style: Theme.of(context)
                            .textTheme
                            .button
                            .copyWith(color: Colors.black),
                      ),
                    ),
                  ),
                  Spacer(flex: 2), // it will take 2/6 spaces
                ],
              ),
            ),
          ),
        ],
      ),
    );
   /* return Scaffold(
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
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(flex: 2), //2/6
                  Text(
                    "Vamos jogar um Quiz!",
                    style: Theme.of(context).textTheme.headline4.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),

                  Spacer(), // 1/6
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Tela_quiz_1()
                          )
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(20 * 0.75), // 15
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xffDA70D6), Color(0xFF00FFCB)],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      child: Text(
                        "Vamos Começar",
                        style: Theme.of(context)
                            .textTheme
                            .button
                            .copyWith(color: Colors.black),
                      ),
                    ),
                  ),
                  Spacer(flex: 2), // it will take 2/6 spaces
                ],
              ),
            ),
          ),
        ],
      ),
    );

    */
  }
}
