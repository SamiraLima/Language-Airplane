import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Si_tu_Tienes_espanhol extends StatefulWidget {
  const Si_tu_Tienes_espanhol({Key key}) : super(key: key);

  @override
  _Si_tu_Tienes_espanholState createState() => _Si_tu_Tienes_espanholState();
}

class _Si_tu_Tienes_espanholState extends State<Si_tu_Tienes_espanhol> {
  AudioPlayer audioPlayer = AudioPlayer();
  AudioCache audioCache = AudioCache(prefix: "audios/");
  bool primeiraExecucao = true;

  _executar(String nomeAudio){

    audioCache.play( nomeAudio + ".mp3");

  }

  _executar1() async {

    if( primeiraExecucao ){
      audioPlayer = await audioCache.play("Si_tú_Tienes_Muchas_Ganas_de_Aplaudir.mp3");
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
        title: Text("Si tú Tienes Muchas Ganas de Aplaudir",
          style: TextStyle(
              color: Colors.black, fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              fontSize: 14
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
                      child: Text("Si tú tienes muchas ganas de aplaudir."),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("si tú tienes muchas ganas de aplaudir."),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("si tú tienes la razón y no hay oposición."),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("no te quedes con las ganas de aplaudir."),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Text("Si tú tienes muchas ganas de reír."),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("si tú tienes muchas ganas de reír."),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("si tú tienes la razón y no hay oposición."),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("no te quedes con las ganas de reír."),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Text("Si tú tienes muchas ganas de silbar."),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("si tú tienes muchas ganas de silbar."),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("si tú tienes la razón y no hay oposición."),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("no te quedes con las ganas de silbar."),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Text("Si tú tienes muchas ganas de gritar."),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("si tú tienes muchas ganas de gritar."),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("si tú tienes la razón y no hay oposición."),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("no te quedes con las ganas de gritar."),
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
                        "Si tú tienes muchas ganas de aplaudir.",
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
                          child: Text("-Si = A palavra si, é condicional;"),
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
                                  _executar("si_espanhol");
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
                          child: Text("-Tú = Você, utilizado em contextos informais;"),
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
                                  _executar("tu_espanhol");
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
                          child: Text("-Tienes = Verbo Ter;"),
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
                                  _executar("ter_espanhol");
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
                          child: Text("-Muchas = Muitas/Muita;"),
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
                                  _executar("muito_espanhol");
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
                          child: Text("-Ganas =  Vontade;"),
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
                                  _executar("vontade_espanhol");
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
                          child: Text("-De = A preposição De;"),
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
                                  _executar("de_espanhol");
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
                          child: Text("-Aplaudir =Verbo bater palmas;"),
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
                                  _executar("aplaudir_espanhol");
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
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        "si tú tienes muchas ganas de aplaudir.",
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
                          child: Text("-Si = A palavra si, é condicional;"),
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
                                  _executar("si_espanhol");
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
                          child: Text("-Tú = Você, utilizado em contextos informais;"),
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
                                  _executar("tu_espanhol");
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
                          child: Text("-Tienes = Verbo Ter;"),
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
                                  _executar("ter_espanhol");
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
                          child: Text("-Muchas = Muitas/Muita;"),
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
                                  _executar("muito_espanhol");
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
                          child: Text("-Ganas =  Vontade;"),
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
                                  _executar("vontade_espanhol");
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
                          child: Text("-De = A preposição De;"),
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
                                  _executar("de_espanhol");
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
                          child: Text("-Aplaudir =Verbo bater palmas;"),
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
                                  _executar("aplaudir_espanhol");
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
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        "si tú tienes la razón y no hay oposición.",
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
                          child: Text("-Si = A palavra si, é condicional;"),
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
                                  _executar("si_espanhol");
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
                          child: Text("-Tú = Você, utilizado em contextos informais;"),
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
                                  _executar("tu_espanhol");
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
                          child: Text("-Tienes = Verbo Ter;"),
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
                                  _executar("ter_espanhol");
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
                          child: Text("-La = Artigo feminino no singular, significa A;"),
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
                                  _executar("a_espanhol");
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
                          child: Text("-Razón = Razão/Motivo;"),
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
                                  _executar("razao_espanhol");
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
                          child: Text("-Y = E;"),
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
                                  _executar("e_espanhol");
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
                          child: Text("-No = Não;"),
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
                                  _executar("nao_espanhol");
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
                          child: Text("-Hay = Verbo haver no presente do indicativo;"),
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
                                  _executar("haver_espanhol");
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
                          child: Text("-Oposición = Oposição;"),
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
                                  _executar("oposicao_espanhol");
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
                        "no te quedes con las ganas de aplaudir.",
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
                          child: Text("-No = Não;"),
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
                                  _executar("nao_espanhol");
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
                          child: Text("-Te = Te;"),
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
                                  _executar("te_espanhol");
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
                          child: Text("-Quedes = Ficar;"),
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
                                  _executar("ficar_espanhol");
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
                          child: Text("-Con = Com"),
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
                                  _executar("com_espanhol");
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
                          child: Text("-Las = Artigo feminino no plural, significa AS;"),
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
                                  _executar("as_espanhol");
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
                          child: Text("-Ganas =  Vontade;"),
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
                                  _executar("vontade_espanhol");
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
                          child: Text("-De = A preposição De;"),
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
                                  _executar("de_espanhol");
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
                          child: Text("-Aplaudir =Verbo bater palmas;"),
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
                                  _executar("aplaudir_espanhol");
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
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        "Si tú tienes muchas ganas de reír.",
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
                          child: Text("-Si = A palavra si, é condicional;"),
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
                                  _executar("si_espanhol");
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
                          child: Text("-Tú = Você, utilizado em contextos informais;"),
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
                                  _executar("tu_espanhol");
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
                          child: Text("-Tienes = Verbo Ter;"),
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
                                  _executar("ter_espanhol");
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
                          child: Text("-Muchas = Muitas/Muita;"),
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
                                  _executar("muito_espanhol");
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
                          child: Text("-Ganas =  Vontade;"),
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
                                  _executar("vontade_espanhol");
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
                          child: Text("-De = A preposição De;"),
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
                                  _executar("de_espanhol");
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
                          child: Text("-Reír = Verbo Rir/Sorrir;"),
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
                                  _executar("rir_espanhol");
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
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        "si tú tienes muchas ganas de reír.",
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
                          child: Text("-Si = A palavra si, é condicional;"),
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
                                  _executar("si_espanhol");
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
                          child: Text("-Tú = Você, utilizado em contextos informais;"),
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
                                  _executar("tu_espanhol");
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
                          child: Text("-Tienes = Verbo Ter;"),
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
                                  _executar("ter_espanhol");
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
                          child: Text("-Muchas = Muitas/Muita;"),
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
                                  _executar("muito_espanhol");
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
                          child: Text("-Ganas =  Vontade;"),
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
                                  _executar("vontade_espanhol");
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
                          child: Text("-De = A preposição De;"),
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
                                  _executar("de_espanhol");
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
                          child: Text("-Reír = Verbo Rir/Sorrir;"),
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
                                  _executar("rir_espanhol");
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
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        "si tú tienes la razón y no hay oposición.",
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
                          child: Text("-Si = A palavra si, é condicional;"),
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
                                  _executar("si_espanhol");
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
                          child: Text("-Tú = Você, utilizado em contextos informais;"),
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
                                  _executar("tu_espanhol");
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
                          child: Text("-Tienes = Verbo Ter;"),
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
                                  _executar("ter_espanhol");
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
                          child: Text("-La = Artigo feminino no singular, significa A;"),
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
                                  _executar("a_espanhol");
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
                          child: Text("-Razón = Razão/Motivo;"),
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
                                  _executar("razao_espanhol");
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
                          child: Text("-Y = E;"),
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
                                  _executar("e_espanhol");
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
                          child: Text("-No = Não;"),
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
                                  _executar("nao_espanhol");
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
                          child: Text("-Hay = Verbo haver no presente do indicativo;"),
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
                                  _executar("haver_espanhol");
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
                          child: Text("-Oposición = Oposição;"),
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
                                  _executar("oposicao_espanhol");
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
                        "no te quedes con las ganas de reír.",
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
                          child: Text("-No = Não;"),
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
                                  _executar("nao_espanhol");
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
                          child: Text("-Te = Te;"),
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
                                  _executar("te_espanhol");
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
                          child: Text("-Quedes = Ficar;"),
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
                                  _executar("ficar_espanhol");
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
                          child: Text("-Con = Com"),
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
                                  _executar("com_espanhol");
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
                          child: Text("-Las = Artigo feminino no plural, significa AS;"),
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
                                  _executar("as_espanhol");
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
                          child: Text("-Ganas =  Vontade;"),
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
                                  _executar("vontade_espanhol");
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
                          child: Text("-De = A preposição De;"),
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
                                  _executar("de_espanhol");
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
                          child: Text("-Reír = Verbo Rir/Sorrir;"),
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
                                  _executar("rir_espanhol");
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
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        "Si tú tienes muchas ganas de silbar.",
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
                          child: Text("-Si = A palavra si, é condicional;"),
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
                                  _executar("si_espanhol");
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
                          child: Text("-Tú = Você, utilizado em contextos informais;"),
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
                                  _executar("tu_espanhol");
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
                          child: Text("-Tienes = Verbo Ter;"),
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
                                  _executar("ter_espanhol");
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
                          child: Text("-Muchas = Muitas/Muita;"),
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
                                  _executar("muito_espanhol");
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
                          child: Text("-Ganas =  Vontade;"),
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
                                  _executar("vontade_espanhol");
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
                          child: Text("-De = A preposição De;"),
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
                                  _executar("de_espanhol");
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
                          child: Text("-Silbar = Verbo Assobiar;"),
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
                                  _executar("assobiar_espanhol");
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
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        "si tú tienes muchas ganas de silbar.",
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
                          child: Text("-Si = A palavra si, é condicional;"),
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
                                  _executar("si_espanhol");
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
                          child: Text("-Tú = Você, utilizado em contextos informais;"),
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
                                  _executar("tu_espanhol");
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
                          child: Text("-Tienes = Verbo Ter;"),
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
                                  _executar("ter_espanhol");
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
                          child: Text("-Muchas = Muitas/Muita;"),
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
                                  _executar("muito_espanhol");
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
                          child: Text("-Ganas =  Vontade;"),
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
                                  _executar("vontade_espanhol");
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
                          child: Text("-De = A preposição De;"),
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
                                  _executar("de_espanhol");
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
                          child: Text("-Silbar = Verbo Assobiar;"),
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
                                  _executar("assobiar_espanhol");
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
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        "si tú tienes la razón y no hay oposición.",
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
                          child: Text("-Si = A palavra si, é condicional;"),
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
                                  _executar("si_espanhol");
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
                          child: Text("-Tú = Você, utilizado em contextos informais;"),
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
                                  _executar("tu_espanhol");
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
                          child: Text("-Tienes = Verbo Ter;"),
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
                                  _executar("ter_espanhol");
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
                          child: Text("-La = Artigo feminino no singular, significa A;"),
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
                                  _executar("a_espanhol");
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
                          child: Text("-Razón = Razão/Motivo;"),
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
                                  _executar("razao_espanhol");
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
                          child: Text("-Y = E;"),
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
                                  _executar("e_espanhol");
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
                          child: Text("-No = Não;"),
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
                                  _executar("nao_espanhol");
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
                          child: Text("-Hay = Verbo haver no presente do indicativo;"),
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
                                  _executar("haver_espanhol");
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
                          child: Text("-Oposición = Oposição;"),
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
                                  _executar("oposicao_espanhol");
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
                        "no te quedes con las ganas de silbar.",
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
                          child: Text("-No = Não;"),
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
                                  _executar("nao_espanhol");
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
                          child: Text("-Te = Te;"),
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
                                  _executar("te_espanhol");
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
                          child: Text("-Quedes = Ficar;"),
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
                                  _executar("ficar_espanhol");
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
                          child: Text("-Con = Com"),
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
                                  _executar("com_espanhol");
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
                          child: Text("-Las = Artigo feminino no plural, significa AS;"),
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
                                  _executar("as_espanhol");
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
                          child: Text("-Ganas =  Vontade;"),
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
                                  _executar("vontade_espanhol");
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
                          child: Text("-De = A preposição De;"),
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
                                  _executar("de_espanhol");
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
                          child: Text("-Silbar = Verbo Assobiar;"),
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
                                  _executar("assobiar_espanhol");
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
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        "Si tú tienes muchas ganas de gritar.",
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
                          child: Text("-Si = A palavra si, é condicional;"),
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
                                  _executar("si_espanhol");
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
                          child: Text("-Tú = Você, utilizado em contextos informais;"),
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
                                  _executar("tu_espanhol");
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
                          child: Text("-Tienes = Verbo Ter;"),
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
                                  _executar("ter_espanhol");
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
                          child: Text("-Muchas = Muitas/Muita;"),
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
                                  _executar("muito_espanhol");
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
                          child: Text("-Ganas =  Vontade;"),
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
                                  _executar("vontade_espanhol");
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
                          child: Text("-De = A preposição De;"),
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
                                  _executar("de_espanhol");
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
                          child: Text("-Gritar= Verbo Gritar;"),
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
                                  _executar("gritar_espanhol");
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
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        "si tú tienes muchas ganas de gritar.",
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
                          child: Text("-Si = A palavra si, é condicional;"),
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
                                  _executar("si_espanhol");
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
                          child: Text("-Tú = Você, utilizado em contextos informais;"),
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
                                  _executar("tu_espanhol");
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
                          child: Text("-Tienes = Verbo Ter;"),
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
                                  _executar("ter_espanhol");
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
                          child: Text("-Muchas = Muitas/Muita;"),
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
                                  _executar("muito_espanhol");
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
                          child: Text("-Ganas =  Vontade;"),
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
                                  _executar("vontade_espanhol");
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
                          child: Text("-De = A preposição De;"),
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
                                  _executar("de_espanhol");
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
                          child: Text("-Gritar= Verbo Gritar;"),
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
                                  _executar("gritar_espanhol");
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
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        "si tú tienes la razón y no hay oposición.",
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
                          child: Text("-Si = A palavra si, é condicional;"),
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
                                  _executar("si_espanhol");
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
                          child: Text("-Tú = Você, utilizado em contextos informais;"),
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
                                  _executar("tu_espanhol");
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
                          child: Text("-Tienes = Verbo Ter;"),
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
                                  _executar("ter_espanhol");
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
                          child: Text("-La = Artigo feminino no singular, significa A;"),
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
                                  _executar("a_espanhol");
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
                          child: Text("-Razón = Razão/Motivo;"),
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
                                  _executar("razao_espanhol");
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
                          child: Text("-Y = E;"),
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
                                  _executar("e_espanhol");
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
                          child: Text("-No = Não;"),
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
                                  _executar("nao_espanhol");
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
                          child: Text("-Hay = Verbo haver no presente do indicativo;"),
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
                                  _executar("haver_espanhol");
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
                          child: Text("-Oposición = Oposição;"),
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
                                  _executar("oposicao_espanhol");
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
                        "no te quedes con las ganas de gritar.",
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
                          child: Text("-No = Não;"),
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
                                  _executar("nao_espanhol");
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
                          child: Text("-Te = Te;"),
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
                                  _executar("te_espanhol");
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
                          child: Text("-Quedes = Ficar;"),
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
                                  _executar("ficar_espanhol");
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
                          child: Text("-Con = Com"),
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
                                  _executar("com_espanhol");
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
                          child: Text("-Las = Artigo feminino no plural, significa AS;"),
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
                                  _executar("as_espanhol");
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
                          child: Text("-Ganas =  Vontade;"),
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
                                  _executar("vontade_espanhol");
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
                          child: Text("-De = A preposição De;"),
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
                                  _executar("de_espanhol");
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
                          child: Text("-Gritar= Verbo Gritar;"),
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
                                  _executar("gritar_espanhol");
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
