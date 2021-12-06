import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Esqueci_Senha extends StatefulWidget {
  const Esqueci_Senha({Key key}) : super(key: key);

  @override
  _Esqueci_SenhaState createState() => _Esqueci_SenhaState();
}

class _Esqueci_SenhaState extends State<Esqueci_Senha> {
  String _email;
  final auth = FirebaseAuth.instance;
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
            children: [
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
                    children: [
                      Text(
                        "Esqueci a Senha",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 20),

                      Text("Nós enviaremos um link para você... Por favor click no link e mude sua senha"),
                      SizedBox(height: 20),

                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: TextField(
                          autofocus: false,
                          onChanged: (value) {
                            setState(() {
                              _email = value;
                            });
                          },
                          style: TextStyle(fontSize: 16),
                          decoration: InputDecoration(
                              hintText: "Digite seu email",
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
                        width: size.width * 0.5,
                        child: RaisedButton(
                          shape: new RoundedRectangleBorder(borderRadius:
                          new BorderRadius.circular(30.0)),
                          color: Color(0xff5CE6B8),
                          padding: EdgeInsets.all(17),
                          child: Text(
                            "Enviar pedido",
                            style: TextStyle(
                                fontSize: 16
                            ),
                          ),
                          onPressed: () {
                            auth.sendPasswordResetEmail(email: _email);
                            Navigator.of(context).pop();
                            print(_email);
                          },
                        ),
                      ),

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





