import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class Tela_Dicionario_Coreano extends StatefulWidget {
  @override
  _Tela_Dicionario_CoreanoState createState() => _Tela_Dicionario_CoreanoState();
}

class _Tela_Dicionario_CoreanoState extends State<Tela_Dicionario_Coreano> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff5CE6B8),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff5CE6B8),
      ),
      body: SafeArea(
          child: Column(
            children: <Widget>[
              Text(
                "DICIONÁRIO",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 20,),
              Expanded(
                child: Stack(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40)
                        ),

                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.grey[200]
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(10),
                          hintText: "Digite uma palavra",
                        ),

                      ),
                    ),
                  ],
                ),
              )
            ],
          )
      ),
    );
  }
}
