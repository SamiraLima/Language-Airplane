import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class volando_alto_livro extends StatefulWidget {
  const volando_alto_livro({Key key}) : super(key: key);

  @override
  _volando_alto_livroState createState() => _volando_alto_livroState();
}

class _volando_alto_livroState extends State<volando_alto_livro> {
  AudioPlayer audioPlayer = AudioPlayer();
  AudioCache audioCache = AudioCache(prefix: "audios/");
  bool primeiraExecucao = true;

  _executar() async {

    if( primeiraExecucao ){
      audioPlayer = await audioCache.play("Volando.mp3");
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
        title: Text("Volando Alto",
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
                      padding: EdgeInsets.only(top: 30),
                      child: Image.asset("Imagens/voando.jpg"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("La canción de la Madre era suave y dulce. Chandu la estaba escuchando. Chandu cayó dormida. En sus sueños, estaba volando."),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("Volando y volando en un jardín. ¡Mirad! Una mariposa, tan bonita.La mariposa dijo:"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("¡Bueno, hola! ¿Qué tal estás?"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("Bien, gracias. respondió Chandu."),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("Chandu voló un poco más alto. Volando y volando, voló hasta un gorrión."),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("¡Hola! ¿Cómo estás? El gorrión preguntó."),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("Muy bien, gracias. dijo Chandu."),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("Después Chandu se elevó un poco más. Volando, todavía volando, se encontró un águila."),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("¡Hola amigo! ¿Cómo estás? el águila preguntó."),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("Me siento bien. respondió Chandu."),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("Chandu volaba más y más alto. Parecía tan fácil. Volaba y volaba. Tan alto que apareció un avión."),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("Hola Chandu, ¿cómo va todo? Preguntó el avión"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("Bien. Y buen vuelo Rápidamente respondió Chandu."),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("Pronto Chandu llegó más alto que nunca. Volaba y volaba."),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("Un cohete llegó a su encuentró.Hola señor, ¿cómo estás? el cohete gritó."),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("Muy bien Sonrió Chandu."),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("Chandu voló todavía más alto. Ahora las estrellas centellaban alrededor. Estaban sonreían a Chandu, como si él fuera parte de ellas."),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("¿Cómo te sientes Chandu? Le preguntó una estrella."),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("Me siento genial. dijo."),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("Era la madre, despertando a Chandu. Buenos días, ¿cómo estás? Él la agrozó fuerte y dijo, Oh, ahora me siento mejor que nunca"),
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
