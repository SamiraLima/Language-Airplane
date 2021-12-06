import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:language_airplane/Coreano/Tela_Alfabeto_Coreano.dart';
import 'package:language_airplane/Coreano/Tela_AprendendoSeDivertindo_Coreano.dart';
import 'package:language_airplane/Coreano/Tela_Dialogo_Coreano.dart';
import 'package:language_airplane/Coreano/Tela_JogoMemoria_Coreano.dart';
import 'package:language_airplane/Coreano/Tela_Gramatica_Coreano.dart';
import 'package:language_airplane/Coreano/Tela_Leitura_Coreano.dart';
import 'package:language_airplane/Coreano/Tela_Perfil_Coreano.dart';
import 'package:language_airplane/Coreano/Tela_Vocabulario_Coreano.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Chat_Coreano.dart';


class Tela_Principal_Coreano extends StatefulWidget {


  @override
  _Tela_Principal_CoreanoState createState() => _Tela_Principal_CoreanoState();

}

class _Tela_Principal_CoreanoState extends State<Tela_Principal_Coreano> {

  Future <void> _launchLink(String url) async {
    if(await canLaunch(url)){
      await launch(url, forceWebView: false, forceSafariVC: false);
    }else{
      print('Não pode executar o link $url');
    }

  }

  File _imagem;
  String _idUsuarioLogado;
  bool _subindoImagem = false;
  String _urlImagemRecuperada;

  void _abrirTela_Alfabeto_Coreano(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> Tela_Alfabeto_Coreano() ));
  }
  void _abrirTela_Gramatica_Coreano(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> Tela_Gramatica_Coreano() ));
  }
  void _abrirTela_Dialogo_Coreano(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> Tela_Dialogo_Coreano() ));
  }
  void _abrirTela_Leitura_Coreano(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> Tela_Leitura_Coreano() ));
  }
  void _abrirTela_AprendendoSeDivertindo_Coreano(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> Tela_AprendendoSeDivertindo_Coreano() ));
  }
  void _abrirTela_Perfil_Coreano(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> Tela_Perfil_Coreano() ));
  }
  void _abrirTela_Chat_Coreano(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> Chat_Coreano() ));
  }



  Future _uploadImagem() async {

    FirebaseStorage storage = FirebaseStorage.instance;
    StorageReference pastaRaiz = storage.ref();
    StorageReference arquivo = pastaRaiz
        .child("perfil")
        .child(_idUsuarioLogado + ".jpg");

    //Upload da imagem
    StorageUploadTask task = arquivo.putFile(_imagem);

    //Controlar progresso do upload
    task.events.listen((StorageTaskEvent storageEvent){

      if( storageEvent.type == StorageTaskEventType.progress ){
        setState(() {
          _subindoImagem = true;
        });
      }else if( storageEvent.type == StorageTaskEventType.success ){
        setState(() {
          _subindoImagem = false;
        });
      }

    });

    //Recuperar url da imagem
    task.onComplete.then((StorageTaskSnapshot snapshot){
      _recuperarUrlImagem(snapshot);
    });

  }

  Future _recuperarUrlImagem(StorageTaskSnapshot snapshot) async {

    String url = await snapshot.ref.getDownloadURL();
    _atualizarUrlImagemFirestore( url );

    setState(() {
      _urlImagemRecuperada = url;
    });

  }


  _atualizarUrlImagemFirestore(String url){

    Firestore db = Firestore.instance;

    Map<String, dynamic> dadosAtualizar = {
      "urlImagem" : url
    };

    db.collection("usuarios")
        .document(_idUsuarioLogado)
        .updateData( dadosAtualizar );

  }

  _recuperarDadosUsuario() async {

    FirebaseAuth auth = FirebaseAuth.instance;
    FirebaseUser usuarioLogado = await auth.currentUser();
    _idUsuarioLogado = usuarioLogado.uid;

    Firestore db = Firestore.instance;
    DocumentSnapshot snapshot = await db.collection("usuarios")
        .document( _idUsuarioLogado )
        .get();

    Map<String, dynamic> dados = snapshot.data;

    if( dados["urlImagem"] != null ){
      setState(() {
        _urlImagemRecuperada = dados["urlImagem"];
      });
    }

  }

  @override
  void initState() {
    super.initState();
    _recuperarDadosUsuario();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
                  Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 24),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Image.asset(
                                    "Imagens/Coreano.jpg",
                                    width: 78,
                                    height: 50,
                                  ),
                                  GestureDetector(
                                    onTap: _abrirTela_Chat_Coreano,
                                    child: Image.asset(
                                      "Imagens/bate_papo.png",
                                      width: 63,
                                      height: 65,
                                    ),
                                  ),
                                  TextButton.icon(
                                    onPressed: () => _launchLink("https://www.youtube.com/channel/UCsnE9QSkJQdGqbT8yL6DBig"),
                                    label: Text(
                                      "",
                                      style: TextStyle(
                                          color: Colors.white
                                      ),
                                    ),
                                    icon:Icon(FontAwesome.youtube, color: Colors.red,size: 40,) ,

                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 10, left: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Image.asset(
                                    "Imagens/Aviao.png",
                                    fit: BoxFit.fill,
                                    width: 330,
                                    height: 50,
                                  ),
                                ],
                              ),
                            ),

                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      GestureDetector(
                                        onTap: _abrirTela_Gramatica_Coreano,
                                        child: Image.asset(
                                          "Imagens/Livros_Coreano.png",
                                          width: 80,
                                          height: 80,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text("Gramática"),
                                ],
                              ),
                            ),

                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Column(
                                        children: <Widget>[
                                          GestureDetector(
                                            onTap: _abrirTela_AprendendoSeDivertindo_Coreano,
                                            child: Image.asset(
                                              "Imagens/Diversao_Coreano.png",
                                              width: 90,
                                              height: 80,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text("Aprenda se"),
                                      Text("divertindo")
                                    ],
                                  ),

                                  Column(
                                    children: <Widget>[
                                      GestureDetector(
                                        onTap: _abrirTela_Perfil_Coreano,
                                        child: CircleAvatar(
                                            maxRadius: 60,
                                            backgroundColor: Colors.grey,
                                            backgroundImage:_urlImagemRecuperada != null
                                                ? NetworkImage(_urlImagemRecuperada)
                                                : null
                                        ),
                                        ),
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      GestureDetector(
                                        onTap: _abrirTela_Alfabeto_Coreano,
                                        child: Image.asset(
                                          "Imagens/Letra_Coreano.png",
                                          width: 80,
                                          height: 80,
                                        ),
                                      ),
                                      Text("Alfabeto"),
                                    ],
                                  ),

                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      Column(
                                        children: <Widget>[
                                          GestureDetector(
                                            onTap: _abrirTela_Dialogo_Coreano,
                                            child: Image.asset(
                                              "Imagens/Dialogo_Coreano.png",
                                              width: 80,
                                              height: 80,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text("Diálogos")
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Column(
                                        children: <Widget>[
                                          GestureDetector(
                                            onTap: _abrirTela_Leitura_Coreano,
                                            child: Image.asset(
                                              "Imagens/Leitura_Coreano.png",
                                              width: 80,
                                              height: 80,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text("Leitura")
                                    ],
                                  ),

                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  RaisedButton(
                                      shape: new RoundedRectangleBorder(borderRadius:
                                      new BorderRadius.circular(30.0)),
                                      color: Color(0xff5CE6B8),
                                      padding: EdgeInsets.all(17),
                                      child: Text(
                                        "Vocabulário",
                                        style: TextStyle(
                                            fontSize: 16
                                        ),
                                      ),
                                      onPressed: (){
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Tela_Vocabulario_Coreano()
                                            )
                                        );
                                      }
                                  ),
                                  RaisedButton(
                                      shape: new RoundedRectangleBorder(borderRadius:
                                      new BorderRadius.circular(30.0)),
                                      color: Color(0xff5CE6B8),
                                      padding: EdgeInsets.all(17),
                                      child: Text(
                                        "Jogo da Memória ",
                                        style: TextStyle(
                                            fontSize: 16
                                        ),
                                      ),
                                      onPressed: (){
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Tela_JogoMemoria()
                                            )
                                        );
                                      }
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),

                      )
                  )
          ],
        ),
      ),
    );
  }
}


