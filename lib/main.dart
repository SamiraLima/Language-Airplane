import 'package:flutter/material.dart';
import 'package:language_airplane/Home.dart';
import 'package:language_airplane/PreHome.dart';
import 'package:flutter/services.dart';
import 'Rotas.dart';


void main(){
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);
  runApp(MaterialApp(

    home: PreHome(),
    initialRoute: "/",
    onGenerateRoute: Rotas.gerarRotas,
    debugShowCheckedModeBanner: false,
    routes: <String, WidgetBuilder>{
      '/Home': (BuildContext context) => new Home()
    },

  ));
}


