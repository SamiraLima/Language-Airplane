
class Vocabulario_Coreano{
  int id;
  String palavra;
  String traducao;

  Vocabulario_Coreano(this.palavra, this.traducao);

  Vocabulario_Coreano.fromMap(Map map){

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