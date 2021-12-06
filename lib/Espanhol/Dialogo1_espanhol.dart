import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Dialogo1_espanhol extends StatefulWidget {
  const Dialogo1_espanhol({Key key}) : super(key: key);

  @override
  _Dialogo1_espanholState createState() => _Dialogo1_espanholState();
}

class _Dialogo1_espanholState extends State<Dialogo1_espanhol> {
  AudioPlayer audioPlayer = AudioPlayer();
  AudioCache audioCache = AudioCache(prefix: "audios/");
  bool primeiraExecucao = true;
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  _executar() async {

    if( primeiraExecucao ){
      audioPlayer = await audioCache.play("dialogo1_espanhol.mp3");
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
  List<String> listaDialogo=[
    "¿Buenos dias? Yo soy Luna ¿Cómo se llama?",
    "Hola, soy Samira. Un placer conocerte",
    "Encantada de conocerte. ¿De dónde eres?",
    "Soy de Brasil.",
    "wow que genial, hablas español muy bien",
    "Ah gracias. ¿Hablas portugués por casualidad?",
    "No, yo no hablo."
  ];
  @override
  Widget build(BuildContext context) {
    var listView = Expanded(
        child: ListView.builder(
            itemCount: listaDialogo.length,
            itemBuilder: (contex, indice){
              double larguraContainer = MediaQuery.of(context).size.width*0.8;
              Alignment alinhamento = Alignment.centerRight;
              Color cor = Colors.purple[100];
              if(indice % 2 ==0){
                alinhamento = Alignment.centerLeft;
                cor = Colors.grey[200];
              }
              return Align(
                alignment: alinhamento,
                child: Padding(
                  padding: EdgeInsets.all(6),
                  child: Container(
                    width: larguraContainer,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        color: cor,
                        borderRadius: BorderRadius.all(Radius.circular(8))
                    ),
                    child: Text(
                      listaDialogo[indice],
                      style: TextStyle(
                          fontSize: 14
                      ),
                    ),
                  ),
                ),
              );
            }
        )
    );

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        title: Text("Diálogo 1",
          style: TextStyle(
              color: Colors.black, fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xff5CE6B8),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(
              color: Colors.black,
              onPressed: (){
                if (!playing) {
                  //now let's play the song
                  _executar();
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
          ),
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("Imagens/mensagen_fundo.png"),
                fit: BoxFit.cover
            )
        ),
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                listView,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
