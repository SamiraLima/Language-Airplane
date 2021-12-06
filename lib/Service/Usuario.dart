import 'package:firebase_auth/firebase_auth.dart';

class Usuario {

  String _idUsuario;
  String _nome;
  String _email;
  String _senha;
  String _idiomaEscolhido;
  String _urlImagem;


  String get urlImagem => _urlImagem;

  set urlImagem(String value) {
    _urlImagem = value;
  }

  String get idiomaEscolhido => _idiomaEscolhido;

  set idiomaEscolhido(String value) {
    _idiomaEscolhido = value;
  }

  Usuario();

  Map<String, dynamic> toMap(){

    Map<String, dynamic> map = {
      "nome" : this.nome,
      "email" : this.email,
      "idiomaEscolhido" : this.idiomaEscolhido,
    };

    return map;
  }

  String verificaIdioma(String escolhaUsuario){
    return escolhaUsuario;
  }


  String get senha => _senha;

  set senha(String value) {
    _senha = value;
  }

  String get email => _email;

  set email(String value) {
    _email = value;
  }

  String get nome => _nome;

  set nome(String value) {
    _nome = value;
  }

  String get idUsuario => _idUsuario;

  set idUsuario(String value) {
    _idUsuario = value;
  }
}