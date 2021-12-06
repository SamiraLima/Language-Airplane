import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/svg.dart';

class Introducao_Coreano extends StatefulWidget {
  const Introducao_Coreano({Key key}) : super(key: key);

  @override
  _Introducao_CoreanoState createState() => _Introducao_CoreanoState();
}

class _Introducao_CoreanoState extends State<Introducao_Coreano> {
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
        title: Text("Introdução ",
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
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  "1- Discursos formal, polido, informal e neutro:",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 16, 200, 0),
                child: Text(
                  "Discurso Formal",
                  style: TextStyle(
                    color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 14
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 16, 110, 0),
                child: Text(
                  "Representação: ~ㅂ니다/~습니다",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  "A formalidade é necessária em razão da solenidade determinada socialmente pelas regras éticas e morais, muito mais do que em relação ao respeito pessoal. É usada principalmente em ambientes de trabalho, clientes, entrevistas e com pessoas que você está vendo pela primeira vez, principalmente se ela for mais velha que você.",
                  style: TextStyle(
                      fontSize: 14
                  ),
                ),
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
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                         Text(
                          "합니다",
                          style: TextStyle(
                              fontSize: 14
                          ),
                        ),


                         Text(
                          "갑니다",
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
                            _executar("fazer_s");
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
                            _executar("ir_s");
                          },
                          child: SvgPicture.asset(
                            "Imagens/som.svg",
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
                padding: EdgeInsets.fromLTRB(0, 16, 200, 0),
                child: Text(
                  "Discurso Polido",
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 14
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 16, 190, 0),
                child: Text(
                  "Representação: ~요",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  "A polidez é desprovida de formalidade. Aqui está a diferença: ser polido não significa ser formal, mas exige um respeito mais pessoal do que social no âmbito geral da nação. Muito usado entre pessoas que se conhecem e reconhecem a necessidade de respeito entre si.",
                  style: TextStyle(
                      fontSize: 14
                  ),
                ),
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
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "해요",
                        style: TextStyle(
                            fontSize: 14
                        ),
                      ),


                      Text(
                        "가요",
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
                            _executar("fazer_f");
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
                            _executar("ir_f");
                          },
                          child: SvgPicture.asset(
                            "Imagens/som.svg",
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
                padding: EdgeInsets.fromLTRB(0, 16, 150, 0),
                child: Text(
                  "Discurso Informal Casual",
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 14
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 16, 170, 0),
                child: Text(
                  "Representação: Sem ~요",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  "A informalidade é a marca de proximidade entre os interlocutores. Muito usado dentro da família e entre amigos. Sua utilização com pessoas que não se conhecem ou com pessoas mais velhas pode ser ofensivo.",
                  style: TextStyle(
                      fontSize: 14
                  ),
                ),
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
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "해",
                        style: TextStyle(
                            fontSize: 14
                        ),
                      ),


                      Text(
                        "가",
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
                            _executar("fazer_i");
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
                            _executar("ir_i");
                          },
                          child: SvgPicture.asset(
                            "Imagens/som.svg",
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
                padding: EdgeInsets.fromLTRB(0, 16, 200, 0),
                child: Text(
                  "Discurso Neutro",
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 14
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 16, 190, 0),
                child: Text(
                  "Representação: ~다",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  "A neutralidade representa a impessoalidade do discurso. Elimina-se toda a pessoalidade e, portanto, toda a necessidade de respeito. Utilizado na linguagem escrita impessoal, como jornais, revistas e artigos. Cuidado que, mesmo escrevendo uma carta nominal, não deve-se utilizar esse discurso, pois, apesar de ser escrito, é uma carta pessoal.",
                  style: TextStyle(
                      fontSize: 14
                  ),
                ),
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
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "하다",
                        style: TextStyle(
                            fontSize: 14
                        ),
                      ),


                      Text(
                        "가다",
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
                            _executar("fazer_n");
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
                            _executar("ir_n");
                          },
                          child: SvgPicture.asset(
                            "Imagens/som.svg",
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
                padding: EdgeInsets.fromLTRB(0, 16, 130, 0),
                child: Text(
                  "2- Ordem das sentenças:",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  "O coreano tem uma estrutura de frase diferente do português, na nossa língua a estrutura oracional do é tipo sujeito-verbo-objeto diferentemente das sentenças coreanas, que são escritas na seguinte ordem:",
                  style: TextStyle(
                      fontSize: 14
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  "Sujeito - Objeto - Verbo (por exemplo: Eu hambúrguer  comer)",
                  style: TextStyle(
                      fontSize: 14
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  "O sujeito se refere a pessoa / coisa / substantivo / tudo o que está agindo. O sujeito faz a ação do verbo:",
                  style: TextStyle(
                      fontSize: 14
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  "Eu fui ao parque (OBS: em coreano iria ficar “Eu ao parque fui”).",
                  style: TextStyle(
                      fontSize: 14
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  "O objeto refere-se a tudo o que o verbo está agindo:”).",
                  style: TextStyle(
                      fontSize: 14
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  "Alunos estudaram coreano (OBS: em coreano iria ficar “Alunos coreano estudam”).”).",
                  style: TextStyle(
                      fontSize: 14
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  "Verbos e adjetivos são colocados no final de uma frase:”).",
                  style: TextStyle(
                      fontSize: 14
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  "O prédio é grande (OBS: em coreano iria ficar “O prédio grande é”).”).",
                  style: TextStyle(
                      fontSize: 14
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 16, 150, 0),
                child: Text(
                  "3- Verbos no infinitivo:",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  " No português sabemos que quando um verbo está no infinitivo é quando ele está em sua forma original, (ex: comer , beber , dormir , dançar , cantar , etc ) , ou seja , com essas terminações ER , AR , IR.",
                  style: TextStyle(
                      fontSize: 14
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  "Em coreano , o infinitivo ( ou forma dicionarizada ) de todos os verbos é identificado pela terminação -다. Ou seja ao invés de os verbos no infinitivo terminarem com ER, AR, IR, em coreano eles simplesmente colocam ~다.",
                  style: TextStyle(
                      fontSize: 14
                  ),
                ),
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
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "하다-fazer",
                        style: TextStyle(
                            fontSize: 14
                        ),
                      ),
                      Text(
                        "먹다-comer",
                        style: TextStyle(
                            fontSize: 14
                        ),
                      ),
                      Text(
                        "마시다-beber",
                        style: TextStyle(
                            fontSize: 14
                        ),
                      ),
                      Text(
                        "자다-dormir",
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
                            _executar("fazer_n");
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
                            _executar("comer_coreano");
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
                            _executar("beber_coreano");
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
                            _executar("dormir_coreano");
                          },
                          child: SvgPicture.asset(
                            "Imagens/som.svg",
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
