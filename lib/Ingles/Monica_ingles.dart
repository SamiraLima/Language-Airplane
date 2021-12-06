import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Monica_ingles extends StatefulWidget {
  const Monica_ingles({Key key}) : super(key: key);

  @override
  _Monica_inglesState createState() => _Monica_inglesState();
}

class _Monica_inglesState extends State<Monica_ingles> {
  AudioPlayer audioPlayer = AudioPlayer();
  AudioCache audioCache = AudioCache(prefix: "audios/");

  _executar(String nomeAudio){

    audioCache.play( nomeAudio + ".mp3");

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(0xff5CE6B8),
        ),
        title: Text("Monica’s Gang!",
          style: TextStyle(
            color: Colors.black, fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          Positioned(
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Image.asset("Imagens/pg1_ingles.png"),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Text(
                        "I trained a lot to be who I am! = Eu treinei muito para me tornar quem eu sou! ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            backgroundColor: Colors.yellow
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text("-I = Eu;"),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 05,width: 05,),
                              GestureDetector(
                                onTap: (){
                                  _executar("eu_ingles");
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
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text("-Trained = Treinei;"),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 05,width: 05,),
                              GestureDetector(
                                onTap: (){
                                  _executar("treinei_ingles");
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
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text("-A lot = Muito;"),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 05,width: 05,),
                              GestureDetector(
                                onTap: (){
                                  _executar("muito_ingles");
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
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text("-To be = Para me tornar;"),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 05,width: 05,),
                              GestureDetector(
                                onTap: (){
                                  _executar("ser_ingles");
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
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text("-Who = Quem;"),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 05,width: 05,),
                              GestureDetector(
                                onTap: (){
                                  _executar("quem_ingles");
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
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text("-I am = Eu sou;"),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 05,width: 05,),
                              GestureDetector(
                                onTap: (){
                                  _executar("euSou_coreano");
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
                      padding: EdgeInsets.only(top: 15),
                      child: Image.asset("Imagens/pg2_ingles.png"),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Text(
                        "Sometimes, in tough situations! = As vezes,foram em situações difíceis!",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            backgroundColor: Colors.yellow
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text("-Sometimes = As vezes;"),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 05,width: 05,),
                              GestureDetector(
                                onTap: (){
                                  _executar("asVezes_ingles");
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
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text("-In tough situations!=Foram situações difíceis!;"),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 05,width: 05,),
                              GestureDetector(
                                onTap: (){
                                  _executar("situacoesDificeis_ingles");
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
                      padding: EdgeInsets.only(top: 15),
                      child: Image.asset("Imagens/pg3_ingles.png"),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Text(
                        "On air, at sea…= Lutando contra o vento, contra as águas…",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            backgroundColor: Colors.yellow
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text("-On air = Lutando contra o vento;"),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 05,width: 05,),
                              GestureDetector(
                                onTap: (){
                                  _executar("contraVento_ingles");
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
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text("-At sea = Contra as águas;"),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 05,width: 05,),
                              GestureDetector(
                                onTap: (){
                                  _executar("contraAgua_ingles");
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
                      padding: EdgeInsets.only(top: 15),
                      child: Image.asset("Imagens/pg4_ingles.png"),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Text(
                        "And even up on mountains!= E até mesmo, contra montanhas!",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            backgroundColor: Colors.yellow
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text("-And even up = E até mesmo;"),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 05,width: 05,),
                              GestureDetector(
                                onTap: (){
                                  _executar("ateMesmo_ingles");
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
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text("-On mountains = Contra montanhas;"),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 05,width: 05,),
                              GestureDetector(
                                onTap: (){
                                  _executar("contraMontanha_ingles");
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
                      padding: EdgeInsets.only(top: 15),
                      child: Image.asset("Imagens/pg5_ingles.png"),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Text(
                        "But I can only do all that because I eat well, to be strong and healthy! = Mas eu só pude fazer tudo isso, porque eu me alimentei muito bem, para me tornar forte e saudável!",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            backgroundColor: Colors.yellow
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text("-But = Mas;"),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 05,width: 05,),
                              GestureDetector(
                                onTap: (){
                                  _executar("mas_ingles");
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
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text("-I can only = Eu só pude;"),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 05,width: 05,),
                              GestureDetector(
                                onTap: (){
                                  _executar("euSoPude_ingles");
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
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text("-Do all that = Fazer tudo isso;"),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 05,width: 05,),
                              GestureDetector(
                                onTap: (){
                                  _executar("fazerTudoIsso_ingles");
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
                      padding: EdgeInsets.fromLTRB(0, 16, 10, 0),
                      child: Text("-Because I eat well = Porque eu me alimentei muito"),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text("bem;"),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 05,width: 05,),
                              GestureDetector(
                                onTap: (){
                                  _executar("porqueComoBem_ingles");
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
                      padding: EdgeInsets.fromLTRB(0, 16, 30, 0),
                      child: Text("-To be strong and healthy = Para me tornar forte"),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text("e saudável;"),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 05,width: 05,),
                              GestureDetector(
                                onTap: (){
                                  _executar("meTornarForteSaudavel_ingles");
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
                      padding: EdgeInsets.only(top: 15),
                      child: Image.asset("Imagens/pg6_ingles.png"),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Text(
                        "-And so I fight for justice = E depois disso, eu comecei a lutar pela justiça",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            backgroundColor: Colors.yellow
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text("-And so = E depois disso;"),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 05,width: 05,),
                              GestureDetector(
                                onTap: (){
                                  _executar("depoisDisso_ingles");
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
                      padding: EdgeInsets.fromLTRB(0, 16, 92, 0),
                      child: Text("-I fight for justice = Eu comecei a lutar"),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text("pela justiça;"),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 05,width: 05,),
                              GestureDetector(
                                onTap: (){
                                  _executar("comeceiLutar_ingles");
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
                      padding: EdgeInsets.fromLTRB(0, 16, 25, 0),
                      child: Text(
                        "-As captain Pete Oak! = Da mesma maneira que",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            backgroundColor: Colors.yellow
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text(
                            "o capitão Pete Oak fez!",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                backgroundColor: Colors.yellow
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 05,width: 05,),
                              GestureDetector(
                                onTap: (){
                                  _executar("daMesmaManeiraCapitaoPete_ingles");
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
                      padding: EdgeInsets.only(top: 15),
                      child: Image.asset("Imagens/pg7_ingles.png"),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Text(
                        "-I love it, dad! And I promise to eat better! = Eu adorei a história pai! Prometo me alimentar melhor!",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            backgroundColor: Colors.yellow
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text("-I love it, dad = Eu adorei a história pai;"),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 05,width: 05,),
                              GestureDetector(
                                onTap: (){
                                  _executar("euAmeiPai_ingles");
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
                      padding: EdgeInsets.fromLTRB(0, 16, 5, 0),
                      child: Text("-And I promise to eat better = Prometo me alimentar"),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text("melhor;"),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 05,width: 05,),
                              GestureDetector(
                                onTap: (){
                                  _executar("prometoAlimentarMelhor_ingles");
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
                      padding: EdgeInsets.only(top: 15),
                      child: Image.asset("Imagens/pg8_ingles.png"),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Text(
                        "-If I eat everything my parents give me = Se eu comer tudo o que os meus pais me dão",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            backgroundColor: Colors.yellow
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text("-If I = Se eu;"),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 05,width: 05,),
                              GestureDetector(
                                onTap: (){
                                  _executar("seEu_ingles");
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
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text("-Eat = Comer;"),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 05,width: 05,),
                              GestureDetector(
                                onTap: (){
                                  _executar("comer_ingles");
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
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text("-Everything = Tudo;"),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 05,width: 05,),
                              GestureDetector(
                                onTap: (){
                                  _executar("tudo_ingles");
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
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text("-My parents = O que os meus pais;"),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 05,width: 05,),
                              GestureDetector(
                                onTap: (){
                                  _executar("meusPais_ingles");
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
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text("-Give me = Me dão;"),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 05,width: 05,),
                              GestureDetector(
                                onTap: (){
                                  _executar("meDao_ingles");
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
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Text(
                        "-Will I become a strong superhero when  I grow up. = Irei me tornar um super-herói quando eu crescer.",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            backgroundColor: Colors.yellow
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text("-Will I become = Irei me tornar;"),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 05,width: 05,),
                              GestureDetector(
                                onTap: (){
                                  _executar("meTornar_inglese");
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
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text("-A strong superhero = Um super-herói;"),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 05,width: 05,),
                              GestureDetector(
                                onTap: (){
                                  _executar("umSuperheroi_ingles");
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
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text("-When I grow up = Quando eu crescer;"),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 05,width: 05,),
                              GestureDetector(
                                onTap: (){
                                  _executar("quandoEuCrescer_ingles");
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
                      padding: EdgeInsets.only(top: 15),
                      child: Image.asset("Imagens/pg9_ingles.png"),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text(
                            "-Hey, Maggy!= Oi, Magali!;",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                backgroundColor: Colors.yellow
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 05,width: 05,),
                              GestureDetector(
                                onTap: (){
                                  _executar("hiMaggy_ingles");
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
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text(
                            "-Hi, Junior!= Oi, Dudu!;",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                backgroundColor: Colors.yellow
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 05,width: 05,),
                              GestureDetector(
                                onTap: (){
                                  _executar("hiJunior_ingles");
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
                      padding: EdgeInsets.only(top: 15),
                      child: Image.asset("Imagens/pg10_ingles.png"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Image.asset("Imagens/pg11_ingles.png"),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Text(
                        "Gee! The way Maggy eats, I'll have to work hard to get as strong as her! = Caramba! Do jeito que a Magali come,vou ter que me esforçar,para ficar forte igual a ela!",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            backgroundColor: Colors.yellow
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text("-Gee = Caramba;"),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 05,width: 05,),
                              GestureDetector(
                                onTap: (){
                                  _executar("caramba_ingles");
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
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text("-The way Maggy = Do jeito que a Magali ;"),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 05,width: 05,),
                              GestureDetector(
                                onTap: (){
                                  _executar("doJeitoMaggy_ingles");
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
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text("-Eats = Come;"),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 05,width: 05,),
                              GestureDetector(
                                onTap: (){
                                  _executar("comer_ingles");
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
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text("-I'll have to = Vou ter que ;"),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 05,width: 05,),
                              GestureDetector(
                                onTap: (){
                                  _executar("vouTer_ingles");
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
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text("-Work hard = Me esforçar;"),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 05,width: 05,),
                              GestureDetector(
                                onTap: (){
                                  _executar("esforcar_ingles");
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
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text("-To get = Para ficar;"),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 05,width: 05,),
                              GestureDetector(
                                onTap: (){
                                  _executar("paraFicar_ingles");
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
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text("-As strong as her = Forte igual a ela!;"),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 05,width: 05,),
                              GestureDetector(
                                onTap: (){
                                  _executar("forteIgual_ingles");
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
          ),
        ],
      ),
    );
  }
}
