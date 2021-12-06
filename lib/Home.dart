import 'package:flutter/material.dart';
import 'package:language_airplane/Cadastro.dart';
import 'package:language_airplane/Login.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _abrirLogin() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Login()
        )
    );
  }
  void _abrirCadastro() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Cadastro()
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(110),
        decoration: BoxDecoration(
            image: DecorationImage
              (image: AssetImage("Imagens/Fundo login.jpg"),
              fit: BoxFit.fill,
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "BEM-VINDO A",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,

                    ),
                  ),
                  Text(
                    "BORDO",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Image.asset(
                    "Imagens/Aeromoca.png",
                    width: 420,
                    height: 150,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    width: size.width * 0.5,
                    child: RaisedButton(
                        shape: new RoundedRectangleBorder(borderRadius:
                        new BorderRadius.circular(30.0)),
                        color: Color(0xff5CE6B8),
                        padding: EdgeInsets.all(17),
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 16
                          ),
                        ),
                        onPressed: (){
                          _abrirLogin();
                        },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    width: size.width *0.5,
                    child: RaisedButton(
                        shape: new RoundedRectangleBorder(borderRadius:
                        new BorderRadius.circular(30.0)),
                        color: Color(0xffD9D9D9),
                        padding: EdgeInsets.all(17),
                        child: Text(
                          "Cadastro",
                          style: TextStyle(
                              fontSize: 16
                          ),
                        ),
                      onPressed: (){
                        _abrirCadastro();
                      },
                    ),
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
