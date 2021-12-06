

class Vocabulario_Ingles{
  int id;
  String palavra;
  String traducao;

  Vocabulario_Ingles(this.palavra, this.traducao);

  Vocabulario_Ingles.fromMap(Map map){

    this.id = map["id"];
    this.palavra = map["palavra"];
    this.traducao = map["traducao"];


  }

  Map toMap(){

    Map<String, dynamic> map = {
      "palavra" : this.palavra,
      "traducao" : this.traducao,
    };

    if(id != null){
      map["id"] = this.id;
    }

    return map;

  }


}