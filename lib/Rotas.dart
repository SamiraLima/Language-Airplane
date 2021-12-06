import 'package:flutter/material.dart';
import 'package:language_airplane/Coreano/Tela_Principal_Coreano.dart';
import 'package:language_airplane/Espanhol/Tela_Principal_Espanhol.dart';
import 'package:language_airplane/Esqueci_Senha.dart';
import 'package:language_airplane/Home.dart';
import 'package:language_airplane/Ingles/Tela_Principal_Ingles.dart';

class Rotas {

  static Route<dynamic> gerarRotas(RouteSettings settings){

    switch( settings.name ){
      case "/Coreano" :
        return MaterialPageRoute(
            builder: (_) => Tela_Principal_Coreano()
        );
      case "/Espanhol" :
        return MaterialPageRoute(
            builder: (_) => Tela_Principal_Espanhol()
        );
      case "/Ingles" :
        return MaterialPageRoute(
            builder: (_) => Tela_Principal_Ingles()
        );
      case "/Home" :
        return MaterialPageRoute(
            builder: (_) => Home()
        );
    }

  }

  }