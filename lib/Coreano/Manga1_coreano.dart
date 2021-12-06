import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Manga1_coreano extends StatefulWidget {
  const Manga1_coreano({Key key}) : super(key: key);

  @override
  _Manga1_coreanoState createState() => _Manga1_coreanoState();
}

class _Manga1_coreanoState extends State<Manga1_coreano> {
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
        title: Text("여신강림",
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
                      child: Image.asset("Imagens/pg1_coreano.png"),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 175, 0),
                      child: Text(
                        "야, 봤어? = Ei, Você viu?",
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
                          child: Text("-야 = Ei;"),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text("-봤어 = Verbo Ver, passado, informal;"),
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
                                  _executar("verPassado_coreano");
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
                      child: Image.asset("Imagens/pg2_coreano.png"),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text(
                            "저 여자 진짜 예뻐 =Aquela mulher é realmente linda;",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                backgroundColor: Colors.yellow
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text("-저 = Aquela/Aquele;"),
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
                                  _executar("euF_coreano");
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
                          child: Text("-여자 = Mulher;"),
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
                                  _executar("mulher_coreano");
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
                          child: Text("-진짜 = Realmente/Demais;"),
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
                                  _executar("realmente_coreano");
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
                          child: Text("-예뻐 = Verbo (bonita/linda), presente, informal;"),
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
                                  _executar("bonita_coreano");
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
                      child: Image.asset("Imagens/pg3_coreano.png"),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text(
                            "비율 좋다.. = Ela tem uma proporção boa;",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                backgroundColor: Colors.yellow
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text("-비율 = Proporção;"),
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
                                  _executar("proporcao_coreano");
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
                          child: Text("-좋다 = (Verbo ser bom);"),
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
                                  _executar("gostar_coreano");
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
                      child: Image.asset("Imagens/pg4_coreano.png"),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text(
                            "저기요 = Com licença;",
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
                                  _executar("licenca_coreano");
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
                      child: Image.asset("Imagens/pg5_coreano.png"),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text(
                            "네? = Sim?",
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
                                  _executar("sim_coreano");
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
                      child: Image.asset("Imagens/pg6_coreano.png"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text(
                        "저 아까부터 쭉 봤는데 그쪽이 마음에 들어서요 연락처 좀 주세요~ = Eu te vi há pouco tempo e eu gostei de você. Por favor, me dê um meio de contado seu.",
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
                          child: Text("-저 = Eu(Formal);"),
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
                                  _executar("euF_coreano");
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
                          child: Text("-아까 = há pouco;"),
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
                                  _executar("haPouco_coreano");
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
                          child: Text("-~부터 = ~desde;"),
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
                                  _executar("desde_coreano");
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
                          child: Text("-쭉 보다 = Olhar por algum tempo;"),
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
                                  _executar("olharTempo_coreano");
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
                          child: Text("-이 = Partícula de sujeito;"),
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
                                  _executar("particulaS_coreano");
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
                          child: Text("-마음에 들다 = Estar satisfeito, gostar;"),
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
                                  _executar("estarSatisfeito_coreano");
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
                          child: Text("-연락처 = Meio de contato;"),
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
                                  _executar("meioContato_coreano");
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
                          child: Text("-좀 = Suavizar um pedido;"),
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
                                  _executar("suavizarP_coreano");
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
                          child: Text("-주세요 = Por favor;"),
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
                                  _executar("porFavor_coreano");
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
                              "아 죄송합니다 = Ah Desculpa(Formal);",
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
                                  _executar("desculpaF_coreano");
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
                      child: Image.asset("Imagens/pg7_coreano.png"),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 175, 0),
                      child: Text(
                        "앗 또 오셨다! = oh ela veio novamente!",
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
                          child: Text("-앗 = oh;"),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text("-또 = Novamente(pode ter outro significado);"),
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
                                  _executar("novamente_coreano");
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
                          child: Text("-오다 = Verbo (Vir),formal;"),
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
                                  _executar("vir_coreano");
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
                      child: Image.asset("Imagens/pg8_coreano.png"),
                    ),
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text(
                            "저 초코맛 푸치푸치누에 휘핑크림 많~ 이 올려주세요 = Eu quero muito chantilly em cima do meu capuccino de chocolate, por favor;",
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
                          child: Text("-저 = Aquela/Aquele;"),
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
                                  _executar("euF_coreano");
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
                          child: Text("-초코맛 = Sabor chocolate;"),
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
                                  _executar("saborChocolate_coreano");
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
                          child: Text("-푸치푸치누 = Forma fofa de falar capuccino;"),
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
                                  _executar("capuccinoF_coreano");
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
                          child: Text("- ~에 = ~Indica local;"),
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
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text("- 휘핑크림 = Chantilly;"),
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
                                  _executar("cremeChantilly_coreano");
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
                          child: Text("-많이 =  Muito;"),
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
                                  _executar("muitoD_coreano");
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
                          child: Text("-올리다 = levantar, colocar em cima;"),
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
                                  _executar("levantar_coreano");
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
                          child: Text("-주세요 = Por favor;"),
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
                                  _executar("porFavor_coreano");
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
                      child: Image.asset("Imagens/pg9_coreano.png"),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text(
                            "넵 = Sim, versão fofa;",
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
                                  _executar("simF_coreano");
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
                      child: Image.asset("Imagens/pg10_coreano.png"),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text(
                            "음료 나왔습니다! = A bebida saiu/está pronta!",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                backgroundColor: Colors.yellow
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text(
                            "-음료 = Bebida;",
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
                                  _executar("bebida_coreano");
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
                            "-나오다 = Verbo sair, Muito formal;",
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
                                  _executar("sair_coreano");
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
                      child: Image.asset("Imagens/pg11_coreano.png"),
                    ),


                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text(
                            "휘핑크림 많~이 맞으시죠? = Você pediu muito chantilly, certo/né?",
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
                          child: Text("-휘핑크림 = Chantilly;"),
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
                                  _executar("cremeChantilly_coreano");
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
                          child: Text("-많이 = Muito;"),
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
                                  _executar("muitoD_coreano");
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
                          child: Text("-맞다 = Verbo (esteja certo);"),
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
                                  _executar("estejaCerto_coreano");
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
                          child: Text("-죠 = Né/certo, forma;"),
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
                                  _executar("neF_coreano");
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
                      child: Image.asset("Imagens/pg12_coreano.png"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text(
                        "꺅! 감사해요! 좋은하루 보내세요~ = Ahh! Obrigada! Tenha um bom dia;",
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
                          child: Text("-꺅 = Som fofo;"),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text("-감사해요 = Obrigada, formal;"),
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
                                  _executar("obrigadoF_coreano");
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
                          child: Text("-좋은하루 보내세요 = Tenha um bom dia;"),
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
                                  _executar("bomDia_coreano");
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
                        "넵! 또 오세요! 아니 안녕히 가세요!! = Sim!, venha novamente! Não, Tchau!",
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
                          child: Text("-넵 = Sim, versão fofa;"),
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
                                  _executar("simF_coreano");
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
                          child: Text("-또 = Novamente(pode ter outro significado);"),
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
                                  _executar("novamente_coreano");
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
                          child: Text("-오다 = Verbo (Vir), formal;"),
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
                                  _executar("vir_coreano");
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
                          child: Text("-세요 = Normalmente indica ordem;"),
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
                                  _executar("ordem_coreano");
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
                          child: Text("-아니 = Não;"),
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
                                  _executar("naoI_coreano");
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
                          child: Text("-안녕히 가세요 = Tchau, formal;"),
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
                                  _executar("tchauF_coreano");
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
                      child: Image.asset("Imagens/pg13_coreano.png"),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 15, 84, 0),
                      child: Text(
                        "어 주경아 여기야! = oh, ju-gyeong, aqui!",
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
                          child: Text("-주경 = Nome próprio;"),
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
                                  _executar("nomeProprio_coreano");
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
                          child: Text("-아 = Jeito informal de chamar alguém;"),
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
                                  _executar("chamarAlguem_coreano");
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
                          child: Text("-여기 = Aqui;"),
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
                                  _executar("aqui_coreano");
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
                          child: Text("-야 = Vem do verbo ser, informal;"),
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
                                  _executar("serI_coreano");
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
                      child: Image.asset("Imagens/pg14_coreano.png"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text(
                        "앗 웅! 자리 맡아줘서 고마워~ = Uahh, Obrigado por guardar o meu lugar;",
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
                          child: Text("-자리 맡아 = Guardar lugar;"),
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
                                  _executar("guardarLugar_coreano");
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
                          child: Text("-줘서 고마워 = Obrigado por…;"),
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
                                  _executar("obrigadoPor_coreano");
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
                      child: Image.asset("Imagens/pg15_coreano.png"),
                    ),

                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text(
                        "와 휘핑 좀 봐 그 알바생 백퍼 너한테 관심 있다니까 = Uau, olha esse chantilly, aquele garoto que é estagiário cem por cento de certeza tem interesse em você;",
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
                          child: Text("-와 = Uau;"),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text("-휘핑 = Chantilly;"),
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
                                  _executar("Chantilly_coreano");
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
                          child: Text("-좀 = Suavizar um pedido;"),
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
                                  _executar("suavizarP_coreano");
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
                          child: Text("-봐 = veja/olha;"),
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
                                  _executar("ver_coreano");
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
                          child: Text("-그 = Aquele;"),
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
                                  _executar("aquele_coreano");
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
                          child: Text("-알바생 = Pessoa que trabalha em meio período;"),
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
                                  _executar("trabalhaMeioPeríodo_coreano");
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
                          child: Text("-백퍼 = Abreviação de cem por cento;"),
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
                                  _executar("cemporCentoA_coreano");
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
                          child: Text("-너한테 = Em você;"),
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
                                  _executar("emVoce_coreano");
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
                          child: Text("-관심 = Interesse;"),
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
                                  _executar("Interesse_coreano");
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
                          child: Text("-있다니까 = Tem, formal;"),
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
                                  _executar("temFormal_coreano");
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
                            "에이 설마.. = Ei sem chance…;",
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
                                  _executar("semChance_coreano");
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
                      child: Image.asset("Imagens/pg16_coreano.png"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text(
                        "혹시 남친 있으세요? = Por acaso você tem namorado?",
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
                          child: Text("-혹시 = Por um acaso;"),
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
                                  _executar("porAcaso_coreano");
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
                          child: Text("-남친 = Namorado;"),
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
                                  _executar("namorado_coreano");
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
                          child: Text("-있으세요 = Ter, muito formal;"),
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
                                  _executar("terFormal_coreano");
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
                        "사실 어제 메시지함 들어가 보니 한xx한테 메시지 와있었어 = Na verdade ontem eu entrei na minha caixa de mensagens e tinha uma mensagem do xxxxx;",
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
                          child: Text("-사실 = Na verdade;"),
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
                                  _executar("verdade_coreano");
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
                          child: Text("-어제 = Ontem;"),
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
                                  _executar("ontem_coreano");
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
                          child: Text("-메시지함 = Caixa de mensagens;"),
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
                                  _executar("CaixaM_coreano");
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
                          child: Text("-들어가 = Entrou;"),
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
                                  _executar("entrou_coreano");
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
                          child: Text("-보니 = Faz uma ação e acontece outra;"),
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
                                  _executar("fazer_ao_coreano");
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
                          child: Text("-메시지 = Mensagem;"),
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
                                  _executar("mensagem_coreano");
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
                          child: Text("-와있었어 = Tinha/veio;"),
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
                                  _executar("veio_coreano");
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
                      child: Image.asset("Imagens/pg17_coreano.png"),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 16, 130, 0),
                      child: Text(
                        "엄마 나왔어~ = Mãe eu cheguei;",
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
                          child: Text("-엄마 = Mãe;"),
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
                                  _executar("mae_coreano");
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
                          child: Text("-나왔어 = Eu cheguei, informal;"),
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
                                  _executar("cheguei_coreano");
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
                      child: Image.asset("Imagens/pg18_coreano.png"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text(
                        "화장지워야 하눈데.. = Eu preciso tirar a maquiagem mas…;",
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
                          child: Text("-화장 = Maquiagem;"),
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
                                  _executar("maquiagem_coreano");
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
                          child: Text("-지워 = Apagar/Tirar;"),
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
                                  _executar("tirar_coreano");
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
                          child: Text("-야 하 = Preciso fazer;"),
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
                                  _executar("tenhoF_coreano");
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
                          child: Text("-눈데 = Mas…;"),
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
                                  _executar("mas_coreano");
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
                      child: Image.asset("Imagens/pg19_coreano.png"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text(
                        "아 오늘 SNS 업뎃 안 했네 빨리해야지 = Ah nossa hoje eu não atualizei as minhas redes sociais, Tenho que fazer isso rápido né;",
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
                          child: Text("-오늘 = Hoje;"),
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
                                  _executar("hoje_coreano");
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
                          child: Text("-SNS = Sigla para Redes sociais na coreia;"),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text("-업뎃  = Atualização;"),
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
                                  _executar("atualizacao_coreano");
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
                          child: Text("-안 = Negação;"),
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
                                  _executar("negacao_coreano");
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
                          child: Text("-했 = Fiz;"),
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
                                  _executar("fiz_coreano");
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
                          child: Text("- ~네 = Surpresa;"),
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
                                  _executar("surpresa_coreano");
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
                          child: Text("-빨리= Rapido;"),
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
                                  _executar("rapido_coreano");
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
                          child: Text("-해야 = Tenho que fazer;"),
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
                                  _executar("tenhoF_coreano");
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
                          child: Text("- ~지 = Né;"),
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
                                  _executar("ne_coreano");
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
                      child: Image.asset("Imagens/pg20_coreano.png"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text(
                        "오옷 올리자마자 좋아요 700개 = Uau assim que eu postei a foto já tem 700 gostei;",
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
                          child: Text("-올리 = Subir/Postar;"),
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
                                  _executar("postar_coreano");
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
                          child: Text("-자마자 = Assim que;"),
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
                                  _executar("assimQ_coreano");
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
                          child: Text("-좋아요 = Gostei/Curtidas;"),
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
                                  _executar("gostei_coreano");
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
                          child: Text("-개 = Unidade de contagem de Coisas;"),
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
                                  _executar("unidadeCoisa_coreano");
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
                      child: Image.asset("Imagens/pg21_coreano.png"),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 16, 110, 0),
                      child: Text(
                        "크아~ 시원해! = Ahhh, refrescante;",
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
                          child: Text("-시원해 = Refrescante;"),
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
                                  _executar("refrescante_coreano");
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
