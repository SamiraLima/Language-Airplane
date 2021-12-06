import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class NomeEmail_Espanhol extends StatefulWidget {
  const NomeEmail_Espanhol({Key key}) : super(key: key);

  @override
  _NomeEmail_EspanholState createState() => _NomeEmail_EspanholState();
}

class _NomeEmail_EspanholState extends State<NomeEmail_Espanhol> {
  TextEditingController _controllerNome = TextEditingController();
  TextEditingController _controllerEmail = TextEditingController();
  String _idUsuarioLogado;
  String _email;
  final auth = FirebaseAuth.instance;

  _atualizarNomeFirestore(){

    String nome = _controllerNome.text;
    Firestore db = Firestore.instance;

    Map<String, dynamic> dadosAtualizar = {
      "nome" : nome
    };

    db.collection("usuarios")
        .document(_idUsuarioLogado)
        .updateData( dadosAtualizar );

  }

  _atualizarEmailFirestore(){

    String email = _controllerEmail.text;
    Firestore db = Firestore.instance;

    Map<String, dynamic> dadosAtualizar = {
      "email" : email
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
    _controllerNome.text = dados["nome"];
    _controllerEmail.text = dados["email"];

  }

  @override
  void initState() {
    super.initState();
    _recuperarDadosUsuario();
  }

  Future resetEmail(String newEmail) async {
    var message;
    FirebaseUser firebaseUser = await FirebaseAuth.instance.currentUser();
    firebaseUser
        .updateEmail(newEmail)
        .then(
          (value) => message = 'Success',
    )
        .catchError((onError) => message = 'error');
    return message;
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0,15,250,0),
                child: Text(
                  "Nome",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,

                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: TextField(
                  autofocus: true,
                  controller: _controllerNome,
                  style: TextStyle(fontSize: 16),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(32,16,32,16),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0,15,250,0),
                child: Text(
                  "Email",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,

                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 9),
                child: TextField(
                  autofocus: true,
                  onChanged: (value) {
                    setState(() {
                      _email = value.trim();
                    });
                  },
                  controller: _controllerEmail,
                  style: TextStyle(fontSize: 16),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(32,16,32,16),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))
                  ),
                ),
              ),
              SizedBox(height: 20),
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
                      _atualizarNomeFirestore();
                      resetEmail(_email);
                      _atualizarEmailFirestore();
                    }
                ),
              ),
            ],
          ),
        ),

      ),
    );
  }
}

