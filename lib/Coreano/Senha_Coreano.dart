import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Senha_Coreano extends StatefulWidget {
  const Senha_Coreano({Key key}) : super(key: key);

  @override
  _Senha_CoreanoState createState() => _Senha_CoreanoState();
}

class _Senha_CoreanoState extends State<Senha_Coreano> {
  String _email;
  final auth = FirebaseAuth.instance;

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
                  "Email",
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
                  autofocus: false,
                  onChanged: (value) {
                    setState(() {
                      _email = value;
                    });
                  },
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
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
