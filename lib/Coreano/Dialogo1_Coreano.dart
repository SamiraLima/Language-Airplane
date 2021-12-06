import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Dialogo1_Coreano extends StatefulWidget {
  const Dialogo1_Coreano({Key key}) : super(key: key);

  @override
  _Dialogo1_CoreanoState createState() => _Dialogo1_CoreanoState();
}

class _Dialogo1_CoreanoState extends State<Dialogo1_Coreano> {
  AudioPlayer audioPlayer = AudioPlayer();
  AudioCache audioCache = AudioCache(prefix: "audios/");
  bool primeiraExecucao = true;
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  _executar() async {

    if( primeiraExecucao ){
      audioPlayer = await audioCache.play("dialogo1_coreano.mp3");
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
    "안녕하세요? 저는 화영이예요. 이름이 뭐예요?",
    "안녕하세요, 저는 사미라예요. 만나서 반갑습니다",
    "반갑습니다. 사미라는 어느 나라 사람이에요?",
    "저는 브라질 사람이에요.",
    "우와, 대단해요. 한국어를 잘 해요",
    "아,고마워요. 혹시 화영는 포르투갈어를 해요?",
    "아니요, 못 해요."
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
