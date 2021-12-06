import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class Vogais_Simples_Coreano extends StatefulWidget {
  @override
  _Vogais_Simples_CoreanoState createState() => _Vogais_Simples_CoreanoState();
}

class _Vogais_Simples_CoreanoState extends State<Vogais_Simples_Coreano> {
  AudioCache _audioCache = AudioCache(prefix: "audios/");

  _executar(String nomeAudio){

    _audioCache.play( nomeAudio + ".mp3");

  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(0xff5CE6B8),
        ),
        title: Text("Vogais Simples",
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
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(top: 16),
                child: Text("Na tabela abaixo, temos as vogais(모음) básicas do coreano:"),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: Image.asset("Imagens/Tabela_Vogais_Simples.jpg"),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text("Em sua composição, o alfabeto coreano contem 24 letras e é escrito em blocos silábicos que agrupam no mínimo duas e no máximo cinco entre 24 letras, das quais 14 são consoantes e 10 são vogais."),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text("Nesse tópico vamos aprender as 10 vogais simples do 한글 (alfabeto coreano)."),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text("No coreano, a sequência dos traços durante a escrita é muito importante e influencia na aparência da letra. "),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 16, 178, 0),
                child: Text("Enfim, vamos às vogais!"),
              ),
              SizedBox(height: 20,),
              Row(
                children: <Widget>[
                  Image.asset("Imagens/A_Coreano.png"),

                 Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: <Widget>[
                     Text("Exemplos:"),
                     Text("안녕하세요 (Olá)"),
                     Text("아이 (criança)"),
                     Text("아니다 (Verbo não ser)"),
                   ],
                 ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 05,),
                        GestureDetector(
                          onTap: (){
                            _executar("oi_coreano");
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
                            _executar("crianca_coreano");
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
                            _executar("nao_ser_coreano");
                          },
                          child: SvgPicture.asset(
                            "Imagens/som.svg",
                            fit: BoxFit.fill,
                            width: 30,
                            height: 20,),
                        ),

                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: <Widget>[
                  Image.asset("Imagens/YA_Coreano.jpg"),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Exemplos:"),
                      Text("이야기 (história)"),
                      Text("야구 모자 (chapéu"),
                      Text("de beisebol)"),
                    ],
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 10),
                    child:  Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 05,),
                        GestureDetector(
                          onTap: (){
                            _executar("historia_coreano");
                          },
                          child: SvgPicture.asset(
                            "Imagens/som.svg",
                            fit: BoxFit.fill,
                            width: 20,
                            height: 20,),
                        ),
                        SizedBox(height: 10,),
                        GestureDetector(
                          onTap: (){
                            _executar("chapeu_coreano");
                          },
                          child: SvgPicture.asset(
                            "Imagens/som.svg",
                            fit: BoxFit.fill,
                            width: 20,
                            height: 20,),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: <Widget>[
                  Image.asset("Imagens/Ò_Coreano.png"),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Exemplos:"),
                      Text("어디 (onde, aonde)"),
                      Text("어머니 (Mãe)"),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child:  Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 05,),
                        GestureDetector(
                          onTap: (){
                            _executar("onde_coreano");
                          },
                          child: SvgPicture.asset(
                            "Imagens/som.svg",
                            fit: BoxFit.fill,
                            width: 20,
                            height: 20,),
                        ),
                        SizedBox(height: 10,),
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
              SizedBox(height: 20,),
              Row(
                children: <Widget>[
                  Image.asset("Imagens/YÓ_Coreano.png"),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Exemplos:"),
                      Text("여자 (mulher)"),
                      Text("여기 (aqui)"),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child:  Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 05,),
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
                        SizedBox(height: 10,),
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
              SizedBox(height: 20,),
              Row(
                children: <Widget>[
                  Image.asset("Imagens/O_Coreano.png"),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Exemplos:"),
                      Text("오렌지 (Laranja)"),
                      Text("오다 (Verbo vir)"),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child:  Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 05,),
                        GestureDetector(
                          onTap: (){
                            _executar("laranja_coreano");
                          },
                          child: SvgPicture.asset(
                            "Imagens/som.svg",
                            fit: BoxFit.fill,
                            width: 20,
                            height: 20,),
                        ),
                        SizedBox(height: 10,),
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
              SizedBox(height: 20,),
              Row(
                children: <Widget>[
                  Image.asset("Imagens/YO_Coreano.png"),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Exemplos:"),
                      Text("요리하다 (cozinhar)"),
                      Text("요일 (dia da semana)"),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child:  Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 05,),
                        GestureDetector(
                          onTap: (){
                            _executar("cozinhar_coreano");
                          },
                          child: SvgPicture.asset(
                            "Imagens/som.svg",
                            fit: BoxFit.fill,
                            width: 20,
                            height: 20,),
                        ),
                        SizedBox(height: 10,),
                        GestureDetector(
                          onTap: (){
                            _executar("dia_semana_coreano");
                          },
                          child: SvgPicture.asset(
                            "Imagens/som.svg",
                            fit: BoxFit.fill,
                            width: 20,
                            height: 20,),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: <Widget>[
                  Image.asset("Imagens/U_Coreano.png"),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Exemplos:"),
                      Text("우유 (Leite)"),
                      Text("우리 (Nós)"),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child:  Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 05,),
                        GestureDetector(
                          onTap: (){
                            _executar("leite_coreano");
                          },
                          child: SvgPicture.asset(
                            "Imagens/som.svg",
                            fit: BoxFit.fill,
                            width: 20,
                            height: 20,),
                        ),
                        SizedBox(height: 10,),
                        GestureDetector(
                          onTap: (){
                            _executar("nos_coreano");
                          },
                          child: SvgPicture.asset(
                            "Imagens/som.svg",
                            fit: BoxFit.fill,
                            width: 20,
                            height: 20,),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: <Widget>[
                  Image.asset("Imagens/YU_Coreano.png"),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Exemplos:"),
                      Text("유리 (Vidro)"),
                      Text("이유 (Razão, motivo)"),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child:  Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 05,),
                        GestureDetector(
                          onTap: (){
                            _executar("vidro_coreano");
                          },
                          child: SvgPicture.asset(
                            "Imagens/som.svg",
                            fit: BoxFit.fill,
                            width: 20,
                            height: 20,),
                        ),
                        SizedBox(height: 10,),
                        GestureDetector(
                          onTap: (){
                            _executar("rasao_coreano");
                          },
                          child: SvgPicture.asset(
                            "Imagens/som.svg",
                            fit: BoxFit.fill,
                            width: 20,
                            height: 20,),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: <Widget>[
                  Image.asset("Imagens/I_Coreano.png"),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Exemplos:"),
                      Text("이름 (Nome)"),
                      Text("이메일 (E-mail)"),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child:  Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 05,),
                        GestureDetector(
                          onTap: (){
                            _executar("nome_coreano");
                          },
                          child: SvgPicture.asset(
                            "Imagens/som.svg",
                            fit: BoxFit.fill,
                            width: 20,
                            height: 20,),
                        ),
                        SizedBox(height: 10,),
                        GestureDetector(
                          onTap: (){
                            _executar("email_coreano");
                          },
                          child: SvgPicture.asset(
                            "Imagens/som.svg",
                            fit: BoxFit.fill,
                            width: 20,
                            height: 20,),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: <Widget>[
                  Image.asset("Imagens/Ù_Coreano.png"),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Exemplos:"),
                      Text("느리다 (Verbo ser lento)"),
                      Text("버스 (Ônibus)"),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child:  Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 05,),
                        GestureDetector(
                          onTap: (){
                            _executar("lento_coreano");
                          },
                          child: SvgPicture.asset(
                            "Imagens/som.svg",
                            fit: BoxFit.fill,
                            width: 20,
                            height: 20,),
                        ),
                        SizedBox(height: 10,),
                        GestureDetector(
                          onTap: (){
                            _executar("onibus_coreano");
                          },
                          child: SvgPicture.asset(
                            "Imagens/som.svg",
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
                child: Text("* Para pronunciar o som da vogal ㅡposicione os lábios no formato como se fosse pronunciar a vogal i, mas pronuncie u, é como se você fizesse um som de nojo."),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text("Mas todas as letras nas palavras de exemplo tem uma bolinha junto com a vogal, por que? As vogais no coreano nunca podem estar sozinhas, então eles colocam uma consoante para fazer par que no caso é aquela bolinha, a vogal é igual a uma criança que não pode ficar sozinha. Isso é só uma pincelada, nos próximos tópicos vamos aprender sobre as silabas coreanas (jamo) e vamos entender melhor do porque a vogal precisa dessa bolinha."),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
