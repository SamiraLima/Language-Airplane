import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Artigos_espanhol extends StatefulWidget {
  const Artigos_espanhol({Key key}) : super(key: key);

  @override
  _Artigos_espanholState createState() => _Artigos_espanholState();
}

class _Artigos_espanholState extends State<Artigos_espanhol> {
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
        title: Text("Artigos e suas Contrações",
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
                  "1.	Os artigos",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text("A língua espanhola distingue dois gêneros, o masculino e o feminino. Desta forma temos os artigos definidos ou determinados, e os indefinidos ou indeterminados."),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: Image.asset("Imagens/artigos_espanhol.png"),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text("Os artigos anunciam o gênero e número de uma palavra."),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text("Ex: El estudiante - género masculino, número singular."),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text("– Artigo definido: refere-se a objetos conhecidos, com precisão."),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text("– Artigo indefinido: assinala um substantivo de uma maneira vaga."),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text("– Artigo neutro LO: não se refere nem a gênero, nem número, nem seres determinados. Transforma um adjetivo com determinação masculina em um substantivo abstrato, é próprio do idioma español. Ex: lo bueno, lo falso."),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 16, 120, 0),
                child: Text(
                  "Outras funções do artigo neutro:",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                ),),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text("– Diante de adverbios. Ex: Lo malo es que no tenemos comida."),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text("– Diante de pronomes possessivos masculinos singulares. Ex: Me gusta lo mío."),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(" Diante de: que, cual y más. Ex: Lo que te he dicho es la verdad/ Lo más triste."),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text("Não se usa os artigos diante de nomes de pessoas, países, cidades que não tem complemento. Ex: Hoy, hablé con Juan."),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 16, 200, 0),
                child: Text(
                  "Com a exceção de:",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text("– Nomes com complemento: Yo soy la Maria de España y no la de Portugal;"),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 16, 110, 0),
                child: Text("– Nomes de familias: Los Garcías;"),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 16, 25, 0),
                child: Text("– Nomes de rios, lagos, mares: El rio Amazonas;"),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 16, 155, 0),
                child: Text("– Países como El Salvador;"),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text("– Para falar de obras de artistas, comparar pessoas famosas, esportistas: Tu hermano parece un Ronaldinho / Han cambiado de sala el Picasso"),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text("– Diante de títulos, cargos, formas de tratamento, quando falamos com a própria pessoa:- Hola, señor Juan / El señor Juan es un hombre muy inteligente."),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 16, 35, 0),
                child: Text("– Diante de profissões: Él estudia Arquitectura;"),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text("– Diante de possessivos e demonstrativos: Mi casa es bonita (en portugués: A minha casa é bonita)."),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 16, 200, 0),
                child: Text(
                  "2.	As contrações",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 16, 35, 0),
                child: Text("No espanhol só existem duas contrações com artigos:"),
              ),
              SizedBox(height: 10,),

              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "al = a + el",
                        style: TextStyle(
                            fontSize: 14
                        ),
                      ),
                      SizedBox(height: 10,),

                      Text(
                        "del = de + el",
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
                            _executar("al_espanhol");
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
                            _executar("del_espanhol");
                          },
                          child: SvgPicture.asset(
                            "Imagens/som.svg",
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
                padding: EdgeInsets.fromLTRB(0, 16, 35, 0),
                child: Text("Ni siempre los géneros de portugués y español coinciden."),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
