import 'dart:io';
import 'Chat_Espanhol.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:language_airplane/Espanhol/Tela_Alfabeto_Espanhol.dart';
import 'package:language_airplane/Espanhol/Tela_AprendendoSeDivertindo_Espanhol.dart';
import 'package:language_airplane/Espanhol/Tela_Dialogo_Espanhol.dart';
import 'package:language_airplane/Espanhol/Tela_Dicionario_Espanhol.dart';
import 'package:language_airplane/Espanhol/Tela_JogoMemoria_Espanhol.dart';
import 'package:language_airplane/Espanhol/Tela_Gramatica_Espanhol.dart';
import 'package:language_airplane/Espanhol/Tela_Leitura_Espanhol.dart';
import 'package:language_airplane/Espanhol/Tela_Perfil_Espanhol.dart';
import 'package:language_airplane/Espanhol/Tela_Vocabulario_Espanhol.dart';

class Tela_Principal_Espanhol extends StatefulWidget {
  @override
  _Tela_Principal_EspanholState createState() => _Tela_Principal_EspanholState();
}

class _Tela_Principal_EspanholState extends State<Tela_Principal_Espanhol> {
  File _imagem;
  String _idUsuarioLogado;
  bool _subindoImagem = false;
  String _urlImagemRecuperada;

  void _abrirTela_Alfabeto_Espanhol(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> Tela_Alfabeto_Espanhol() ));
  }
  void _abrirTela_Gramatica_Espanhol(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> Tela_Gramatica_Espanhol() ));
  }
  void _abrirTela_Dialogo_Espanhol(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> Tela_Dialogo_Espanhol() ));
  }
  void _abrirTela_Leitura_Espanhol(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> Tela_Leitura_Espanhol() ));
  }
  void _abrirTela_AprendendoSeDivertindo_Espanhol(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> Tela_AprendendoSeDivertindo_Espanhol() ));
  }
  void _abrirTela_Chat(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> Chat_Espanhol() ));
  }
  void _abrirTela_Perfil_Espanhol(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> Tela_Perfil_Espanhol() ));
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
          crossAxisAlignment: CrossAxisAlignment.center,
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
                              "Imagens/Espanhol.jpg",
                              width: 78,
                              height: 50,
                            ),
                            GestureDetector(
                              onTap: _abrirTela_Chat,
                              child: Image.asset(
                                "Imagens/bate_papo.png",
                                width: 63,
                                height: 65,
                              ),
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
                                  onTap: _abrirTela_Gramatica_Espanhol,
                                  child: Image.asset(
                                    "Imagens/Livros_Espanhol.png",
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
                                      onTap: _abrirTela_AprendendoSeDivertindo_Espanhol,
                                      child: Image.asset(
                                        "Imagens/Diversao_Espanhol.png",
                                        width: 80,
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
                                  onTap: _abrirTela_Perfil_Espanhol,
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
                                  onTap: _abrirTela_Alfabeto_Espanhol,
                                  child: Image.asset(
                                    "Imagens/Letra_Espanhol.png",
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
                                      onTap: _abrirTela_Dialogo_Espanhol,
                                      child: Image.asset(
                                        "Imagens/Dialogo_Espanhol.png",
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
                                      onTap: _abrirTela_Leitura_Espanhol,
                                      child: Image.asset(
                                        "Imagens/Leitura_Espanhol.png",
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
                                          builder: (context) => Tela_Vocabulario_Espanhol()
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
                                  "Jogo da Memória",
                                  style: TextStyle(
                                      fontSize: 16
                                  ),
                                ),
                                onPressed: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Tela_JogoMemoria_Espanhol()
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
