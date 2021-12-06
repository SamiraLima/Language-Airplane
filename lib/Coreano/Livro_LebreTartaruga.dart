import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Livro_LebreTartaruga extends StatefulWidget {
  const Livro_LebreTartaruga({Key key}) : super(key: key);

  @override
  _Livro_LebreTartarugaState createState() => _Livro_LebreTartarugaState();
}

class _Livro_LebreTartarugaState extends State<Livro_LebreTartaruga> {
  AudioPlayer audioPlayer = AudioPlayer();
  AudioCache audioCache = AudioCache(prefix: "audios/");
  bool primeiraExecucao = true;

  _executar() async {

    if( primeiraExecucao ){
      audioPlayer = await audioCache.play("lebre_coreano.mp3");
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
        title: Text("토끼와 거북이",
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
                      padding: EdgeInsets.only(top: 15),
                      child: Image.asset("Imagens/lebre.png"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("옛날 아주 먼 옛날에, 토끼와 거북이가 살고 있었습니다. 토끼와 거북이가 사는 아름다운 이 마을에 원숭이,개, 고양이, 사슴,너구리,새 등등 여러 동물들도 함께 살고 있었습니다. 어느날, 민첩하고 재빠른 토끼와 느린 거북이가 이야기를 하고 있었습니다."),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("토끼: 흠… 저게 누구야? 느림보 거북이잖아? 인사나 해볼까…?"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("거북이: 토끼야, 안녕? 잘 지냈어?"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("토끼: 니가 무슨 상관이야? 이 느림보 거북이 주제에! 흥!!"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("거북이: 뭐? 내가 느림보 거북이라고?"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("토끼: 느림보래요~ 거북이는~ 느림보래요~ 하하하하하"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("거북이: 좋아, 내가 느림보 거북이가 아니라는 걸 보여주겠어. 토끼 너! 나랑 달리기 경주 하지 않을래? "),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("토끼: 너랑 달리기 경주? 하하하하하 좋아. 어디 누가 이기는지 두고보자 거북아!"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("그렇게 토끼와 거북이는 달리기 경주를 하기로 약속한 뒤 , 다음날 경주를 하기로 한 장소에 모였습니다. 그 뒤에는 다른 동물 친구들도 토끼와 거북이의 경주를 구경하기 위해 서있었습니다. 토끼와 거북이는 출발선 앞에 섰습니다. 원숭이가 심판이 되어 토끼와 거북이의 경주를 봐주기로 했습니다."),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("원숭이: 토끼, 거북아! 너희 모두 준비 되었니?"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("토끼: 응, 준비되었어. 거북이 너는 준비 되었니?"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("거북이: 물론이지! "),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("원숭이: 좋아. 그럼 준비! 출발!"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("경주를 시작한 뒤 얼마되지 않아 토끼는 저만큼 앞서서 달리고 있고, 거북이는 땀을 뻘뻘 흘리며 열심히 기어가고 있습니다. 저 멀리서 동물 친구들이 토끼와 거북이를 응원하는 소리가 들립니다."),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("사슴: 토끼 이겨라! 토끼 이겨라!"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("너구리: 거북이 이겨라! 거북아 달려!!"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("새: 거북아, 할 수 있어! 화이팅!"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("열심히 달리고 있던 토끼는 잠시 나무 밑에 쉬어 가기로 했습니다. 그러나 토끼는 잠이 들고 말았습니다. 그러는 사이, 거북이는 열심히 기어서 결국 토끼가 자고 있는 나무 밑을 지나치게 되었습니다."),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("토끼: 흥! 내가 1 등이야. 잠시 쉬었다가도 거북이는 따라오지 못할거야. 1 시갂만 낮잠 좀 자야겠다. 아~~~함.."),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("거북이: 하하하하.. 토끼녀석, 나를 느림보 거북이라고 놀렸겠다. 내가 이제 1 등이란다 토끼야!"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("토끼: 아니!! 잠시 쉬어갂다는게 1 시갂이나 지나다니…. 어라? 거북이가 이겼잖아?"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text("토끼가 낮잠을 자는 사이, 거북이는 도착선에 도착하고 말았습니다. 거북이는 쉬지 않고 열심히 경주를 마쳤습니다. 그리하여 토끼보다 빨리 도착할 수 있었습니다. 하지만 토끼는 열심히 달렸지만, 중갂에 꾀를 써 결국 거북이에게 지고 말았습니다. 거북이는 저 멀리 보이는 토끼를 보며 흐뭇해 했습니다."),
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
