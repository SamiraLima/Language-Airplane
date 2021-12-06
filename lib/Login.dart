import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:language_airplane/Esqueci_Senha.dart';
import 'package:language_airplane/InputCustomizado.dart';
import 'package:language_airplane/Coreano/Tela_Principal_Coreano.dart';
import 'package:language_airplane/Service/Usuario.dart';
import 'package:loading_indicator/loading_indicator.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {


  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerSenha = TextEditingController();
  String _mensagemErro = "";
  bool _carregando = false;

  _abrirEsqueciSenha(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> Esqueci_Senha() ));
  }

  _validarCampos(){

    //Recuperar dados dos campos
    String email = _controllerEmail.text;
    String senha = _controllerSenha.text;

    //validar campos
    if( email.isNotEmpty && email.contains("@") ){

      if( senha.isNotEmpty && senha.length > 6 ){

        Usuario usuario = Usuario();
        usuario.email = email;
        usuario.senha = senha;

        _logarUsuario( usuario );

      }else{
        setState(() {
          _mensagemErro = "Preencha a senha! digite mais de 6 caracteres";
        });
      }

    }else{
      setState(() {
        _mensagemErro = "Preencha o E-mail válido";
      });
    }

  }

  _logarUsuario( Usuario usuario ){

    setState(() {
      _carregando = true;
    });

    FirebaseAuth auth = FirebaseAuth.instance;

    auth.signInWithEmailAndPassword(
        email: usuario.email,
        password: usuario.senha
    ).then((firebaseUser){

      _redirecionarparaIdiomaEscolhido(firebaseUser.user.uid);

    }).catchError((error){
      _mensagemErro = "Erro ao autenticar usuário, verifique e-mail e senha e tente novamente!";
    });

  }

  _redirecionarparaIdiomaEscolhido(String idUsuario)async{

    Firestore db = Firestore.instance;
    DocumentSnapshot snapshot = await db.collection("usuarios")
    .document(idUsuario)
    .get();

    Map<String, dynamic> dados = snapshot.data;
    String idiomaEscolhido = dados["idiomaEscolhido"];

    setState(() {
      _carregando = false;
    });

    switch(idiomaEscolhido){
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

  bool _obscure = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child:  SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 592,
                padding: EdgeInsets.fromLTRB(30, 160 , 30, 30),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("Imagens/Fundo login.jpg"),
                        fit: BoxFit.fill
                    )
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 1, right: 1),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "LOGIN",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,

                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey[200],
                                  blurRadius: 15,
                                  spreadRadius: 4
                              ),
                            ]
                        ),
                        child: Column(
                          children: <Widget>[
                            InputCustomizado(
                              controller: _controllerEmail,
                              hint: "Email",
                              obscure: false,
                              icon: Icon(Icons.email),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: Center(
                                child: TextField(
                                  controller: _controllerSenha,
                                  obscureText: _obscure,
                                  decoration: InputDecoration(
                                      icon: Icon(Icons.lock),
                                      border: InputBorder.none,
                                      hintText: "Senha",
                                      hintStyle: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 16
                                      ),
                                      suffixIcon: IconButton(
                                          icon: Icon(
                                              _obscure ? Icons.visibility : Icons.visibility_off),
                                          onPressed: () {
                                            setState(() {
                                              _obscure = !_obscure;
                                            });
                                          })),
                                ),
                              ),
                            ),
                            Center(
                              child: Text(
                                _mensagemErro,
                                style: TextStyle(
                                    color: Colors.red[400],
                                    fontSize: 14
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 8),
                        width: size.width * 0.9,
                        child: RaisedButton(
                            shape: new RoundedRectangleBorder(borderRadius:
                            new BorderRadius.circular(30.0)),
                            color: Color(0xff5CE6B8),
                            padding: EdgeInsets.all(17),
                            child: Text(
                              "Entrar",
                              style: TextStyle(
                                  fontSize: 16
                              ),
                            ),
                            onPressed: (){
                             _validarCampos();
                            }
                        ),
                      ),
                      SizedBox(height: 10,),
                      FlatButton(
                        onPressed: (){
                          _abrirEsqueciSenha();
                        },
                        child: Text(
                          "Esqueci minha senha!",
                          style: TextStyle(
                              color: Color.fromRGBO(102, 0, 153, 1),
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      _carregando
                          ? Center(
                        child: Padding(
                          padding:EdgeInsets.only(left: 130, top: 0, bottom: 0, right: 130),
                          child: LoadingIndicator(
                            indicatorType: Indicator.orbit,
                            color: Color(0xff5CE6B8),

                          ),
                        )
                      )
                          : Container(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

      ),

    );
  }
}

