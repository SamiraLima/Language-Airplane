import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class tres_ursos_musica extends StatefulWidget {
  const tres_ursos_musica({Key key}) : super(key: key);

  @override
  _tres_ursos_musicaState createState() => _tres_ursos_musicaState();
}

class _tres_ursos_musicaState extends State<tres_ursos_musica> {
  AudioPlayer audioPlayer = AudioPlayer();
  AudioCache audioCache = AudioCache(prefix: "audios/");
  bool primeiraExecucao = true;

  _executar(String nomeAudio){

    audioCache.play( nomeAudio + ".mp3");

  }

  _executar1() async {

    if( primeiraExecucao ){
      audioPlayer = await audioCache.play("Three Bears.mp3");
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
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(0xff5CE6B8),
        ),
        title: Text("곰 세 마리 (Os três ursos)",
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
                      child: Text("곰 세 마리가 한집에 있어"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("아빠곰, 엄마곰, 애기곰 "),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("아빠곰은 뚱뚱해 "),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("엄마곰은 날씬해 "),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("애기곰은 너무 귀여워 "),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("히쭉히쭉 잘한다"),
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
                          "곰 세 마리가 한집에 있어",
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
                          child: Text("-곰 = Urso;"),
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
                                  _executar("urso_coreano");
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
                          child: Text("-세 = Número 3 de forma reduzida;"),
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
                                  _executar("tresR_coreano");
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
                          child: Text("-마리 = Unidade de contagem para animais;"),
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
                                  _executar("unidadeAnimal_coreano");
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
                          child: Text("-가 = Partícula de sujeito;"),
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
                                  _executar("topicoS_coreano");
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
                          child: Text("-한 = Número 1 de forma reduzida;"),
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
                                  _executar("umR_coreano");
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
                          child: Text("-집 = Casa;"),
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
                                  _executar("casa_coreano");
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
                          child: Text("-에 = Partícula de lugar/tempo/movimento;"),
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
                                  _executar("particulaLTM_coreano");
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
                          child: Text("-있어 = Verbo 있다 = Ter, estar/ficar, haver/existir."),
                        ),

                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text("Verbo conjugado no presente;"),
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
                                  _executar("verboTerC_coreano");
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
                          "아빠곰 엄마곰 애기곰",
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
                          child: Text("-아빠 = Papai;"),
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
                                  _executar("papai_coreano");
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
                          child: Text("-곰 = Urso;"),
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
                                  _executar("urso_coreano");
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
                          child: Text("-엄마 = Mamãe;"),
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
                                  _executar("mamae_coreano");
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
                          child: Text("-애기 = Bebê;"),
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
                                  _executar("bebe_coreano");
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
                          "아빠곰은 뚱뚱해",
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
                          child: Text("- 아빠 = Papai;"),
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
                                  _executar("papai_coreano");
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
                          child: Text("-곰 = Urso;"),
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
                                  _executar("urso_coreano");
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
                          child: Text("-은 = Partícula de tópico;"),
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
                                  _executar("particulaT_coreano");
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
                      child: Text("-뚱뚱해 = Verbo뚱뚱하다 = Gordinho."),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text("Verbo conjugado no presente;"),
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
                                  _executar("gordinho_coreano");
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
                          "엄마곰은 날씬해",
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
                          child: Text("-엄마 = Mamãe;"),
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
                                  _executar("mamae_coreano");
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
                          child: Text("-곰 = Urso;"),
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
                                  _executar("urso_coreano");
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
                          child: Text("-은 = Partícula de tópico;"),
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
                                  _executar("particulaT_coreano");
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
                      child: Text("-날씬해 = Adjetivo날씬하다 = Magro,fino."),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text("Adjetivo conjugado no presente;"),
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
                                  _executar("magra_coreano");
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
                          "애기곰은 너무 귀여워",
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
                          child: Text("-애기 = Bebê;"),
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
                                  _executar("bebe_coreano");
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
                          child: Text("-곰 = Urso;"),
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
                                  _executar("urso_coreano");
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
                          child: Text("-은 = Partícula de tópico;"),
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
                                  _executar("particulaT_coreano");
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
                          child: Text("-너무 = Muito;"),
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
                                  _executar("muito_coreano");
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
                      child: Text("-귀여워 = Adjetivo =  귀엽다 = Fofo."),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text("Adjetivo conjugado no presente;"),
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
                                  _executar("fofo_coreano");
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
                          "히쭉히쭉 잘한다",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            backgroundColor: Colors.yellow
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("-히쭉히쭉 = Advérbio = Sorrindo. Uma palavra que descreve o movimento de rir silenciosamente,-"),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text("continuamente, sentindo-se feliz;"),
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
                                  _executar("sorrindoAD_coreano");
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
                          child: Text("-잘한다 = Fazer tudo certo, faça tudo bem;"),
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
                                  _executar("feitoBem_coreano");
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
