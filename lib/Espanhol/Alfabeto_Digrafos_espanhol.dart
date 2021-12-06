import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Alfabeto_Digrafos_espanhol extends StatefulWidget {
  const Alfabeto_Digrafos_espanhol({Key key}) : super(key: key);

  @override
  _Alfabeto_Digrafos_espanholState createState() => _Alfabeto_Digrafos_espanholState();
}

class _Alfabeto_Digrafos_espanholState extends State<Alfabeto_Digrafos_espanhol> {
  AudioCache _audioCache = AudioCache(prefix: "audios/");

  _executar(String nomeAudio){

    _audioCache.play( nomeAudio + ".mp3");

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(0xff5CE6B8),
        ),
        title: Text("Alfabeto e Dígrafos",
          style: TextStyle(
              color: Colors.black, fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 16, 230, 0),
                child: Text(
                  "1.	Alfabeto:",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: Image.asset("Imagens/alfabeto_espanhol.jpg"),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 16, 200, 0),
                child: Text(
                  "2.	Los Dígrafos:",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text("Os dígrafos em espanhol são duas letras em sequência que representam uma só letra ou fonética. Em 2010 a Real Academia da Língua espanhola eliminou do alfabeto duas letras por considerá-las dígrafos (ch e ll) e de 29 letras do alfabeto caíram para 27 letras."),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 16, 260, 0),
                child: Text(
                  "La CH:",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text("“ch” (la che) corresponde ao som em português das letras “tch”."),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 16, 250, 0),
                child: Text(
                  "Exemplos:",
                  style: TextStyle(
                      fontSize: 14
                  ),
                ),
              ),
              SizedBox(height: 10,),

              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Chocolate",
                        style: TextStyle(
                            fontSize: 14
                        ),
                      ),
                      SizedBox(height: 10,),

                      Text(
                        "Leche",
                        style: TextStyle(
                            fontSize: 14
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 05,width: 05,),
                        GestureDetector(
                          onTap: (){
                            _executar("chocolate_espanhol");
                          },
                          child: SvgPicture.asset(
                            "Imagens/som.svg",
                            fit: BoxFit.fill,
                            width: 20,
                            height: 20,),
                        ),
                        SizedBox(height: 05,),
                        GestureDetector(
                          onTap: (){
                            _executar("leche_espanhol");
                          },
                          child: SvgPicture.asset(
                            "Imagens/som.svg",
                            fit: BoxFit.fill,
                            width: 20,
                            height: 20,),
                        ),

                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 16, 260, 0),
                child: Text(
                  "La LL:",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text("O som de “ll” corresponde em português ao “lh”, porém em poucos lugares é pronunciado dessa forma."),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text("Dependendo do país, essa letra pode ter quatro sons diferentes."),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 16, 250, 0),
                child: Text(
                  "Exemplos:",
                  style: TextStyle(
                      fontSize: 14
                  ),
                ),
              ),
              SizedBox(height: 10,),

              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Calle",
                        style: TextStyle(
                            fontSize: 14
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 05,width: 05,),
                        GestureDetector(
                          onTap: (){
                            _executar("calle_espanhol");
                          },
                          child: SvgPicture.asset(
                            "Imagens/som.svg",
                            fit: BoxFit.fill,
                            width: 20,
                            height: 20,),
                        ),

                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text("Pronuncia-se “cadje” no México e em alguns países da América Central; Na Argentina, Uruguai e regiões próximas pronuncia-se “caje” ou “caxe”; Na Espanha e em alguns países da América Latina pronuncia-se “cáie”;"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
