import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class LeaoRato_livro extends StatefulWidget {
  const LeaoRato_livro({Key key}) : super(key: key);

  @override
  _LeaoRato_livroState createState() => _LeaoRato_livroState();
}

class _LeaoRato_livroState extends State<LeaoRato_livro> {
  AudioPlayer audioPlayer = AudioPlayer();
  AudioCache audioCache = AudioCache(prefix: "audios/");
  bool primeiraExecucao = true;

  _executar() async {

    if( primeiraExecucao ){
      audioPlayer = await audioCache.play("leao.mp3");
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
        title: Text("The Lion and the Mouse",
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Image.asset("Imagens/lion.jpg"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("A Lion lay asleep in the forest, his great head resting on his paws. A timid little Mouse came upon him unexpectedly, and in her fright and haste to get away, ran across the Lion's nose. Roused from his nap, the Lion laid his huge paw angrily on the tiny creature to kill her."),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("Spare me! begged the poor Mouse. Please let me go and some day I will surely repay you."),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("The Lion was much amused to think that a Mouse could ever help him. But he was generous and finally let the Mouse go."),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("Some days later, while stalking his prey in the forest, the Lion was caught in the toils of a hunter's net. Unable to free himself, he filled the forest with his angry roaring. The Mouse knew the voice and quickly found the Lion struggling in the net. Running to one of the great ropes that bound him, she gnawed it until it parted, and soon the Lion was free."),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("You laughed when I said I would repay you, said the Mouse. Now you see that even a Mouse can help a Lion."),
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
