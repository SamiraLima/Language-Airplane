import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Head_musica_ingles extends StatefulWidget {
  const Head_musica_ingles({Key key}) : super(key: key);

  @override
  _Head_musica_inglesState createState() => _Head_musica_inglesState();
}

class _Head_musica_inglesState extends State<Head_musica_ingles> {
  AudioPlayer audioPlayer = AudioPlayer();
  AudioCache audioCache = AudioCache(prefix: "audios/");
  bool primeiraExecucao = true;

  _executar(String nomeAudio){

    audioCache.play( nomeAudio + ".mp3");

  }

  _executar1() async {

    if( primeiraExecucao ){
      audioPlayer = await audioCache.play("Head_Shoulders _Knees _And _Toes.mp3");
      primeiraExecucao = false;
    }else{
      audioPlayer.resume();
    }

  }

  _pausar() async {

    int resultado = await audioPlayer.pause();
    if( resultado == 1 ){
      //sucesso
    }

  }

  _parar() async {

    int resultado = await audioPlayer.stop();
    if( resultado == 1 ){
      //sucesso
    }

  }

  bool playing = false;
  IconData playBtn = Icons.play_arrow;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(0xff5CE6B8),
        ),
        title: Text("Head Shoulders Knees And Toes",
          style: TextStyle(
              color: Colors.black, fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              fontSize: 17
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(110, 60, 0, 0),
                      child: Text(
                        "Letra Completa",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Text("Head, shoulders, knees, and toes, knees and toes."),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("Head, shoulders, knees, and toes, knees and toes."),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("And eyes and ears and mouth and nose."),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("Head, shoulders, knees, and toes, knees and toes."),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(100, 30, 0, 0),
                      child: Text(
                        "Praticando a Letra",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        "Head, shoulders, knees, and toes, knees and toes.",
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
                          child: Text("-Head = Cabeça;"),
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
                                  _executar("cabeca_ingles");
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
                          child: Text("-Shoulders = Ombros;"),
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
                                  _executar("ombro_ingles");
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
                          child: Text("-Knees = Joelhos;"),
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
                                  _executar("joelho_ingles");
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
                          child: Text("-And = E;"),
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
                                  _executar("e_ingles");
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
                          child: Text("-Toes = Dedos dos pés;"),
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
                                  _executar("dedoPe_ingles");
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
                          child: Text("-Knees= Joelhos;"),
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
                                  _executar("joelho_ingles");
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
                          child: Text("-And = E;"),
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
                                  _executar("e_ingles");
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
                          child: Text("-Toes= Dedos dos pés;"),
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
                                  _executar("dedoPe_ingles");
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
                      child: Text(
                        "Head, shoulders, knees, and toes, knees and toes.",
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
                          child: Text("-Head = Cabeça;"),
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
                                  _executar("cabeca_ingles");
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
                          child: Text("-Shoulders = Ombros;"),
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
                                  _executar("ombro_ingles");
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
                          child: Text("-Knees = Joelhos;"),
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
                                  _executar("joelho_ingles");
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
                          child: Text("-And = E;"),
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
                                  _executar("e_ingles");
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
                          child: Text("-Toes = Dedos dos pés;"),
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
                                  _executar("dedoPe_ingles");
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
                          child: Text("-Knees= Joelhos;"),
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
                                  _executar("joelho_ingles");
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
                          child: Text("-And = E;"),
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
                                  _executar("e_ingles");
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
                          child: Text("-Toes= Dedos dos pés;"),
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
                                  _executar("dedoPe_ingles");
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
                      child: Text(
                        "And eyes and ears and mouth and nose.",
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
                          child: Text("-And = E;"),
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
                                  _executar("e_ingles");
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
                          child: Text("-Eyes = Olhos;;"),
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
                                  _executar("olho_ingles");
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
                          child: Text("-And = E;"),
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
                                  _executar("e_ingles");
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
                          child: Text("-Ears= Ouvidos;"),
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
                                  _executar("ouvido_ingles");
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
                          child: Text("-And = E;"),
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
                                  _executar("e_ingles");
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
                          child: Text("-Mouth= Boca;"),
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
                                  _executar("boca_ingles");
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
                          child: Text("-And = E;"),
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
                                  _executar("e_ingles");
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
                          child: Text("-Nose = Nariz;"),
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
                                  _executar("nariz_ingles");
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
                      child: Text(
                        "Head, shoulders, knees, and toes, knees and toes.",
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
                          child: Text("-Head = Cabeça;"),
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
                                  _executar("cabeca_ingles");
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
                          child: Text("-Shoulders = Ombros;"),
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
                                  _executar("ombro_ingles");
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
                          child: Text("-Knees = Joelhos;"),
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
                                  _executar("joelho_ingles");
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
                          child: Text("-And = E;"),
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
                                  _executar("e_ingles");
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
                          child: Text("-Toes = Dedos dos pés;"),
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
                                  _executar("dedoPe_ingles");
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
                          child: Text("-Knees= Joelhos;"),
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
                                  _executar("joelho_ingles");
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
                          child: Text("-And = E;"),
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
                                  _executar("e_ingles");
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
                          child: Text("-Toes= Dedos dos pés;"),
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
                                  _executar("dedoPe_ingles");
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
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            height: 58,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(0),
                color: Color(0xffF0F8FF),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: (){
                          if (!playing) {
                            //now let's play the song
                            _executar1();
                            setState(() {
                              playBtn = Icons.pause;
                              playing = true;
                            });
                          } else {
                            _pausar();
                            setState(() {
                              playBtn = Icons.play_arrow;
                              playing = false;
                            });
                          }
                        },
                        icon: Icon(
                          playBtn,
                        ),
                      ),
                      IconButton(
                        onPressed: (){
                          _parar();
                        },
                        icon: Icon(Icons.stop),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],

      ),
    );
  }
}
