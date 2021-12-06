import 'package:flutter/material.dart';
import 'package:language_airplane/InputCustomizado.dart';
import 'package:language_airplane/Service/Usuario.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Cadastro extends StatefulWidget {
  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerSenha = TextEditingController();
  TextEditingController _controllerNome = TextEditingController();
  String _mensagemErro = "";
  String _escolhaUsuario;
  bool _carregando = false;


  _validarCampos(){

    //Recuperar dados dos campos
    String nome = _controllerNome.text;
    String email = _controllerEmail.text;
    String senha = _controllerSenha.text;

    //validar campos
    if( nome.isNotEmpty ){

      if( email.isNotEmpty && email.contains("@") ){

        if( senha.isNotEmpty && senha.length > 6 ){

          Usuario usuario = Usuario();
          usuario.nome = nome;
          usuario.email = email;
          usuario.senha = senha;
          usuario.idiomaEscolhido = usuario.verificaIdioma(_escolhaUsuario);

          _cadastrarUsuario( usuario );

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

    }else{
      setState(() {
        _mensagemErro = "Preencha o Nome";
      });
    }

  }

  _cadastrarUsuario( Usuario usuario ){

    FirebaseAuth auth = FirebaseAuth.instance;
    Firestore db = Firestore.instance;

    auth.createUserWithEmailAndPassword(
        email: usuario.email,
        password: usuario.senha
    ).then((firebaseUser){

      db.collection("usuarios")
          .document( firebaseUser.user.uid )
          .setData( usuario.toMap() );

      setState(() {
        _carregando = true;
      });

      //redireciona para o painel, de acordo com o tipoUsuario
      switch( usuario.idiomaEscolhido ){
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

    }).catchError((error){
      _mensagemErro = "Erro ao cadastrar usuário, verifique os campos e tente novamente!";
    });

  }
  bool _obscure = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 592,
                padding: EdgeInsets.fromLTRB(30, 160, 30, 30),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("Imagens/Fundo login.jpg"),
                        fit: BoxFit.fill
                    )
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(left: 1, right: 1),
                    child: Column(
                      children: <Widget>[
                        Text(
                          "CADASTRO",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,

                          ),
                        ),
                        SizedBox(height: 20),
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
                                controller: _controllerNome,
                                hint: "Digite seu nome",
                                obscure: false,
                                icon: Icon(Icons.person),
                              ),
                              InputCustomizado(
                                controller: _controllerEmail,
                                hint: "Digite seu email",
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
                                        hintText: "Digite uma senha",
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
                                      color: Colors.red,
                                      fontSize: 16
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "IDIOMA",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,

                              ),
                            ),

                            Container(

                              child:  Padding(
                                padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
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
                            ),


                            Padding(
                              padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
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

                            Padding(
                              padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
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
                          ],
                        ),
                        SizedBox(height: 10),
                        _carregando
                            ? Center(
                          child: CircularProgressIndicator(
                            backgroundColor: Colors.white,
                          ),
                        )
                            : Container(),
                        SizedBox(height: 10),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 8),
                          width: size.width * 0.9,
                          child: RaisedButton(
                              shape: new RoundedRectangleBorder(borderRadius:
                              new BorderRadius.circular(30.0)),
                              color: Color(0xff5CE6B8),
                              padding: EdgeInsets.all(17),
                              child: Text(
                                "Finalizar",
                                style: TextStyle(
                                    fontSize: 16
                                ),
                              ),
                              onPressed: () {
                                _validarCampos();
                              }
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),)
        ,

      )
      ,

    );
  }

}

