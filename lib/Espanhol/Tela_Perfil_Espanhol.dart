import 'dart:io';
import 'Atualizar_Dados_Espanhol.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'Cursos_Disponiveis_Espanhol.dart';
import 'Suporte_Espanhol.dart';

class Tela_Perfil_Espanhol extends StatefulWidget {
  @override
  _Tela_Perfil_EspanholState createState() => _Tela_Perfil_EspanholState();
}

class _Tela_Perfil_EspanholState extends State<Tela_Perfil_Espanhol> {
  File _imagem;
  String _idUsuarioLogado;
  bool _subindoImagem = false;
  String _urlImagemRecuperada;

  _deslogarUsuario()async{

    FirebaseAuth auth = FirebaseAuth.instance;
    await auth.signOut();


    Navigator.pushNamedAndRemoveUntil(
        context,
        "/Home",
            (_) => false
    );

  }

  _CursosDisponiveis(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> Cursos_Disponiveis_Espanhol() ));
  }

  _atualizarDados(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> Atualizar_Dados_Espanhol() ));
  }

  _Suporte(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> Suporte_Espanhol() ));
  }

  Future _recuperarImagem(String origemImagem) async {

    File imagemSelecionada;
    switch( origemImagem ){
      case "camera" :
        imagemSelecionada = await ImagePicker.pickImage(source: ImageSource.camera);
        break;
      case "galeria" :
        imagemSelecionada = await ImagePicker.pickImage(source: ImageSource.gallery);
        break;
    }

    setState(() {
      _imagem = imagemSelecionada;
      if( _imagem != null ){
        _subindoImagem = true;
        _uploadImagem();
      }
    });

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
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Perfil",
          style: TextStyle(
            color: Colors.black, fontStyle: FontStyle.normal,

          ),
        ),
        iconTheme: IconThemeData(
          color: Color(0xff5CE6B8), //change your color here
        ),
        centerTitle: true,
        elevation: 0,

      ),
      body:Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[

              Container(
                child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.grey,
                    backgroundImage:
                    _urlImagemRecuperada != null
                        ? NetworkImage(_urlImagemRecuperada)
                        : null
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlatButton(
                    onPressed: (){
                      _recuperarImagem("camera");
                    },
                    child: Text("Câmera"),
                  ),
                  FlatButton(
                    onPressed: (){
                      _recuperarImagem("galeria");
                    },
                    child: Text("Galeria"),
                  ),
                ],
              ),
              _subindoImagem ? CircularProgressIndicator()
                  : Container(),
              Container(
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: FlatButton(
                          color: Color(0xFFF5F6F9),
                          padding: EdgeInsets.all(20),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                          onPressed: (){
                            _atualizarDados();
                          },
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.person, color: Colors.grey,),
                              SizedBox(width: 20,),
                              Expanded(
                                  child: Text("Atualizar Dados")
                              ),
                              Icon(Icons.arrow_forward_ios)
                            ],
                          )
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: FlatButton(
                          color: Color(0xFFF5F6F9),
                          padding: EdgeInsets.all(20),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                          onPressed: (){
                            _CursosDisponiveis();
                          },
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.book, color: Colors.grey,),
                              SizedBox(width: 20,),
                              Expanded(
                                  child: Text("Cursos Escolhidos")
                              ),
                              Icon(Icons.arrow_forward_ios)
                            ],
                          )
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: FlatButton(
                          color: Color(0xFFF5F6F9),
                          padding: EdgeInsets.all(20),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                          onPressed: (){
                            _Suporte();
                          },
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.help, color: Colors.grey,),
                              SizedBox(width: 20,),
                              Expanded(
                                  child: Text("Suporte")
                              ),
                              Icon(Icons.arrow_forward_ios)
                            ],
                          )
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: FlatButton(
                          color: Color(0xFFF5F6F9),
                          padding: EdgeInsets.all(20),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                          onPressed: (){
                            _deslogarUsuario();
                          },
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.input, color: Colors.grey,),
                              SizedBox(width: 20,),
                              Expanded(
                                  child: Text("Desconectar")
                              ),
                            ],
                          )
                      ),
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
