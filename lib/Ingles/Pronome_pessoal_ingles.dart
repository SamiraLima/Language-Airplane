import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Pronome_pessoal_ingles extends StatefulWidget {
  const Pronome_pessoal_ingles({Key key}) : super(key: key);

  @override
  _Pronome_pessoal_inglesState createState() => _Pronome_pessoal_inglesState();
}

class _Pronome_pessoal_inglesState extends State<Pronome_pessoal_ingles> {
  AudioCache _audioCache = AudioCache(prefix: "audios/");

  _executar(String nomeAudio){

    _audioCache.play( nomeAudio + ".mp3");

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(0xff5CE6B8),
        ),
        title: Text("Pronome Pessoal",
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
                padding: EdgeInsets.fromLTRB(0, 16, 50, 0),
                child: Text(
                  "Pronome Pessoal (Personal Pronoun)",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 16, 40, 0),
                child: Text(
                  "Os Pronomes Pessoais referem-se a alguma pessoa, lugar ou objeto específico e são subdivididos em: ",
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 16, 98, 0),
                child: Text(
                  "– Pronomes Pessoais do Caso Reto.",
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 16, 80, 0),
                child: Text(
                  "– Pronomes Pessoais do Caso Oblíquo.",
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
                child: Text(
                  "Pronomes Pessoais do Caso Reto",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
                child: Text(
                  "Exercem a função de sujeito da oração.",
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 25, 270, 0),
                child: Text(
                  "Singular",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 15, 290, 0),
                child: Text(
                  "I – eu",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                    child: Text(
                      "EX: I am a student./ Eu sou um estudante.",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 05,width: 05,),
                        GestureDetector(
                          onTap: (){
                            _executar("iAm_ingles");
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
                padding: EdgeInsets.fromLTRB(0, 15, 239, 0),
                child: Text(
                  "You – tu, você",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                    child: Text(
                      "EX: You are beautiful./ Você é bonita.",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 05,width: 05,),
                        GestureDetector(
                          onTap: (){
                            _executar("youAre_ingles");
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
                padding: EdgeInsets.fromLTRB(0, 15, 275, 0),
                child: Text(
                  "He – ele",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 15, 55, 0),
                child: Text(
                  "EX: He lives in São Paulo./ Ele mora em São",
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                    child: Text(
                      "Paulo.",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 05,width: 05,),
                        GestureDetector(
                          onTap: (){
                            _executar("heLive_ingles");
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
                padding: EdgeInsets.fromLTRB(0, 15, 265, 0),
                child: Text(
                  "She – ela",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                    child: Text(
                      "EX: She is Brazilian. / Ela é Brasileira.",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 05,width: 05,),
                        GestureDetector(
                          onTap: (){
                            _executar("sheIs_ingles");
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
                padding: EdgeInsets.fromLTRB(0, 15, 100, 0),
                child: Text(
                  "It – ele, ela (para coisas e animais) ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                    child: Text(
                      "EX: It is a table. / É uma mesa.",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 05,width: 05,),
                        GestureDetector(
                          onTap: (){
                            _executar("itIs_ingles");
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
                padding: EdgeInsets.fromLTRB(0, 25, 290, 0),
                child: Text(
                  "Plural",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 15, 268, 0),
                child: Text(
                  "We – nós",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 15, 72, 0),
                child: Text(
                  "EX: We speak Portuguese in Brazil. / Nós ",
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                    child: Text(
                      "falamos Português no Brasil.",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 05,width: 05,),
                        GestureDetector(
                          onTap: (){
                            _executar("weSpeak_ingles");
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
                padding: EdgeInsets.fromLTRB(0, 15, 220, 0),
                child: Text(
                  "You – vós, vocês",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 15, 125, 0),
                child: Text(
                  "EX: You can go together. / Vocês",
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                    child: Text(
                      "podem ir juntos.",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 05,width: 05,),
                        GestureDetector(
                          onTap: (){
                            _executar("youCan_ingles");
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
                padding: EdgeInsets.fromLTRB(0, 15, 220, 0),
                child: Text(
                  "They – eles, elas",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 15, 117, 0),
                child: Text(
                  "EX: They are intelligent. / Eles são",
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                    child: Text(
                      "inteligentes.",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 05,width: 05,),
                        GestureDetector(
                          onTap: (){
                            _executar("theyAre_ingles");
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
                padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
                child: Text(
                  "Pronomes Pessoais do Caso Oblíquo",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
                child: Text(
                  "Exercem a função de objeto da oração.",
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 25, 270, 0),
                child: Text(
                  "Singular",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 15, 235, 0),
                child: Text(
                  "Me – me, mim",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                    child: Text(
                      "EX: Do you like me? / Você gosta de mim?",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 05,width: 05,),
                        GestureDetector(
                          onTap: (){
                            _executar("doYou_ingles");
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
                padding: EdgeInsets.fromLTRB(0, 15, 155, 0),
                child: Text(
                  "You – te, ti, o, a, lhe, a você",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                    child: Text(
                      "EX: I love you. / Eu te amo.",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 05,width: 05,),
                        GestureDetector(
                          onTap: (){
                            _executar("iLove_ingles");
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
                padding: EdgeInsets.fromLTRB(0, 15, 210, 0),
                child: Text(
                  "Him – o, lhe, a ele",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                    child: Text(
                      "EX: I Love him very much. / Eu o amo muito.",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 05,width: 05,),
                        GestureDetector(
                          onTap: (){
                            _executar("ILovehim_ingles");
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
                padding: EdgeInsets.fromLTRB(0, 15, 210, 0),
                child: Text(
                  "Her – a, lhe, a ela",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                    child: Text(
                      "EX: Saw her yesterday. / Eu a vi ontem.",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 05,width: 05,),
                        GestureDetector(
                          onTap: (){
                            _executar("saw_her_ingles");
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
                padding: EdgeInsets.fromLTRB(0, 15, 240, 0),
                child: Text(
                  "It – o, a, lhe",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                    child: Text(
                      "EX: You loves it. / Você lhe adora.",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 05,width: 05,),
                        GestureDetector(
                          onTap: (){
                            _executar("youLove_ingles");
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
                padding: EdgeInsets.fromLTRB(0, 25, 290, 0),
                child: Text(
                  "Plural",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 15, 260, 0),
                child: Text(
                  "Us – nos",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 15, 92, 0),
                child: Text(
                  "EX: They never talk to us. / Eles nunca ",
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                    child: Text(
                      "conversam conosco.",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 05,width: 05,),
                        GestureDetector(
                          onTap: (){
                            _executar("theyNever_ingles");
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
                padding: EdgeInsets.fromLTRB(0, 15, 120, 0),
                child: Text(
                  "You – vos, os, as, lhes, a vocês",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 15, 110, 0),
                child: Text(
                  "EX: She writes to you. / Ela escreve",
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                    child: Text(
                      "para vocês.",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 05,width: 05,),
                        GestureDetector(
                          onTap: (){
                            _executar("sheWrites_ingles");
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
                padding: EdgeInsets.fromLTRB(0, 15, 190, 0),
                child: Text(
                  "Them – os, as, lhes",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 15, 115, 0),
                child: Text(
                  "EX: She talked to them. / Ela falou",
                ),
              ),
              Row(
                children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                        child: Text(
                          "com eles.",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 05,width: 05,),
                            GestureDetector(
                              onTap: (){
                                _executar("sheTalk_ingles");
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
            ],
          ),
        ),
      ),
    );
  }
}
