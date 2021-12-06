import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Cursos_Disponiveis_Espanhol extends StatefulWidget {
  const Cursos_Disponiveis_Espanhol({Key key}) : super(key: key);

  @override
  _Cursos_Disponiveis_EspanholState createState() => _Cursos_Disponiveis_EspanholState();
}

class _Cursos_Disponiveis_EspanholState extends State<Cursos_Disponiveis_Espanhol> {

  String _escolhaUsuario;
  String _idUsuarioLogado;

  _atualizarIdiomaFirestore(){

    String escolha = _escolhaUsuario;
    Firestore db = Firestore.instance;

    Map<String, dynamic> dadosAtualizar = {
      "idiomaEscolhido" : escolha
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
    _escolhaUsuario = dados["idiomaEscolhido"];

  }

  @override
  void initState() {
    super.initState();
    _recuperarDadosUsuario();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Cursos Disponíveis",
          style: TextStyle(
            color: Colors.black, fontStyle: FontStyle.normal,

          ),
        ),
        iconTheme: IconThemeData(
          color: Color(0xff5CE6B8),
          //change your color here
        ),
        centerTitle: true,
        elevation: 0,

      ),
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  height: 70,
                  child: Image.asset(
                    "Imagens/Coreano.jpg",
                    fit: BoxFit.cover,
                  ),
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(80, 0, 0, 0),
                  child: RadioListTile(
                    title: Text("Coreano"),
                    activeColor: Color(0xff5CE6B8),
                    value: "Coreano",
                    groupValue: _escolhaUsuario,
                    onChanged: (String value){
                      setState(() {
                        _escolhaUsuario = value;
                      });
                    },

                  ),
                ),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  height: 70,
                  child: Image.asset(
                    "Imagens/Espanhol.jpg",
                    fit: BoxFit.cover,
                  ),
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(80, 0, 0, 0),
                  child: RadioListTile(
                    title: Text("Espanhol"),
                    activeColor: Color(0xff5CE6B8),
                    value: "Espanhol",
                    groupValue: _escolhaUsuario,
                    onChanged: (String value){
                      setState(() {
                        _escolhaUsuario = value;
                      });
                    },
                  ),
                ),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  height: 60,
                  child: Image.asset(
                    "Imagens/Ingles.jpg",
                    fit: BoxFit.cover,
                  ),
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(80, 0, 0, 0),
                  child:  RadioListTile(
                    title: Text("Inglês"),
                    activeColor: Color(0xff5CE6B8),
                    value: "Ingles",
                    groupValue: _escolhaUsuario,
                    onChanged: (String value){
                      setState(() {
                        _escolhaUsuario = value;
                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 8),
                  width: size.width * 0.3,
                  child: RaisedButton(
                      shape: new RoundedRectangleBorder(borderRadius:
                      new BorderRadius.circular(30.0)),
                      color: Color(0xff5CE6B8),
                      padding: EdgeInsets.all(17),
                      child: Text(
                        "Atualizar",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      onPressed: () {
                        _atualizarIdiomaFirestore();
                        switch( _escolhaUsuario ){
                          case "Coreano" :
                            Navigator.pushNamedAndRemoveUntil(
                                context,
                                "/Coreano",
                                    (_) => false
                            );
                            break;
                          case "Espanhol" :
                            Navigator.pushNamedAndRemoveUntil(
                                context,
                                "/Espanhol",
                                    (_) => false
                            );
                            break;
                          case "Ingles" :
                            Navigator.pushNamedAndRemoveUntil(
                                context,
                                "/Ingles",
                                    (_) => false
                            );
                            break;
                        }
                      }
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

