import 'dart:async';
import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

class PreHome extends StatefulWidget {
  @override
  _PreHomeState createState() => _PreHomeState();
}

class _PreHomeState extends State<PreHome> {
  void NavegarProximaTela() {
    Navigator.pushReplacementNamed(context, '/Home');
  }

  ComecarTimer() async {
    var _duration = new Duration(seconds: 7);
    return new Timer(_duration, NavegarProximaTela);
  }

  @override
  void initState() {
    super.initState();
    ComecarTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.fromLTRB(10, 120, 10 , 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset("Imagens/Teste Logo.png"),
                      Padding(
                        padding:EdgeInsets.only(left: 130, top: 0, bottom: 0, right: 130),
                        child: LoadingIndicator(
                          indicatorType: Indicator.orbit,
                          color: Color(0xff5CE6B8),

                        ),
                      )

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
