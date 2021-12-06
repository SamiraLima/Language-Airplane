import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:language_airplane/helper/VocabularioHelper_Coreano.dart';
import 'package:language_airplane/model/Vocabulario_Coreano.dart';

class Tela_Vocabulario_Coreano extends StatefulWidget {
  @override
  _Tela_Vocabulario_CoreanoState createState() => _Tela_Vocabulario_CoreanoState();
}

class _Tela_Vocabulario_CoreanoState extends State<Tela_Vocabulario_Coreano> {
  TextEditingController _palavraController = TextEditingController();
  TextEditingController _traducaoController = TextEditingController();
  var _db = VocabularioHelper_Coreano();
  List <Vocabulario_Coreano> _vocabularios = List<Vocabulario_Coreano>();
  List<Vocabulario_Coreano> retorno = List<Vocabulario_Coreano>();



  _exibirTelaCadastro( {Vocabulario_Coreano vocabulario} ){
    String textoSalvarAtualizar = "";
    if(vocabulario == null){//salvando

      _palavraController.text = "";
      _traducaoController.text = "";
      textoSalvarAtualizar = "Adicionar";
    }
    else{//atualizando

      _palavraController.text = vocabulario.palavra;
      _traducaoController.text = vocabulario.traducao;
      textoSalvarAtualizar = "Atualizar";

    }

  showDialog(
    context: context,
    builder: (contex){

      return AlertDialog(
        title: Text("$textoSalvarAtualizar Nova Palavra"),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              TextField(
                controller: _palavraController,
                autofocus: true,
                decoration: InputDecoration(
                  labelText: "Palavra",
                  hintText: "Digite a palavra",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)
                  ),
                ),
              ),
              SizedBox(height: 5,),
              TextField(
                controller: _traducaoController,
                autofocus: true,
                decoration: InputDecoration(
                  labelText: "Significado",
                  hintText: "Digite a tradução",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)
                  ),
                ),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          RaisedButton(
            shape: new RoundedRectangleBorder(borderRadius:
            new BorderRadius.circular(30.0)),
            color: Color(0xffD9D9D9),
            child: Text("Cancelar", style: TextStyle(color: Colors.black),),
            onPressed:()=> Navigator.pop(context),
          ),
          RaisedButton(
            shape: new RoundedRectangleBorder(borderRadius:
            new BorderRadius.circular(30.0)),
            color: Color(0xff5CE6B8),
            child: Text("$textoSalvarAtualizar", style: TextStyle(color: Colors.black),),
            onPressed:(){
              _salvarAtualizarVocabulario(vocabularioSelecionada: vocabulario);
              Navigator.pop(context);
            },
          ),
        ],
      );
    },
  );

}

  _recuperarPalavras() async {

    List vocabulariosRecuperadas = await _db.recuperarPalavras();
    List <Vocabulario_Coreano> listaTemporaria = List<Vocabulario_Coreano>();
    for( var item in vocabulariosRecuperadas ){

      Vocabulario_Coreano vocabulario = Vocabulario_Coreano.fromMap(item);
      listaTemporaria.add(vocabulario);

    }

    setState(() {
      _vocabularios = listaTemporaria;
    });
    listaTemporaria = null;

    print("Lista palavras " + vocabulariosRecuperadas.toString());

  }


  _salvarAtualizarVocabulario({Vocabulario_Coreano vocabularioSelecionada}) async {

    String palavra = _palavraController.text;
    String traducao = _traducaoController.text;

    if(vocabularioSelecionada == null){//salvar

      Vocabulario_Coreano vocabulario = Vocabulario_Coreano(palavra, traducao);
      int resultado = await _db.salvarVocabulario(vocabulario);
    }

    else{//atualizar

      vocabularioSelecionada.palavra = palavra;
      vocabularioSelecionada.traducao = traducao;
      int resultado = await _db.atualizarVocabulario(vocabularioSelecionada);

    }

    _palavraController.clear();
    _traducaoController.clear();
    _recuperarPalavras();

  }

  _removerVocabulario(int id)async{

    await _db.removerVocabulario(id);

    _recuperarPalavras();

  }



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _recuperarPalavras();
    retorno = _vocabularios;

  }

  @override
  Widget build(BuildContext context) {

    _recuperarPalavras();

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
                "VOCABULÁRIO",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height:20),
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
                    Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Column(
                        children: <Widget>[
                          Expanded(
                              child: ListView.builder(
                                  itemCount: _vocabularios.length,
                                  itemBuilder: (context, index){

                                    final vocabulario = _vocabularios[index];

                                    return Card(
                                      child: ListTile(
                                        title: Text( vocabulario.palavra.toLowerCase() ),
                                        subtitle: Text(vocabulario.traducao.toLowerCase()) ,
                                        trailing: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            GestureDetector(
                                              onTap: (){
                                                _exibirTelaCadastro(vocabulario: vocabulario);
                                              },
                                              child: Padding(
                                                  padding: EdgeInsets.only(right: 16),
                                                child: Icon(
                                                    Icons.edit,
                                                  color: Color(0xff9CE6B9),
                                                ),
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: (){
                                                return DateFormat.s(showDialog(
                                                  context: context,
                                                  builder: (contex){

                                                    return AlertDialog(
                                                      title: Text("Deletar Palavra"),
                                                      content: Text("Deseja deletar esse item?"),
                                                      actions: <Widget>[
                                                        RaisedButton(
                                                          shape: new RoundedRectangleBorder(borderRadius:
                                                          new BorderRadius.circular(30.0)),
                                                          color: Color(0xffD9D9D9),
                                                          child: Text("Cancelar", style: TextStyle(color: Colors.black),),
                                                          onPressed:()=> Navigator.pop(context),
                                                        ),
                                                        RaisedButton(
                                                          shape: new RoundedRectangleBorder(borderRadius:
                                                          new BorderRadius.circular(30.0)),
                                                          color: Color(0xff5CE6B8),
                                                          child: Text("Deletar", style: TextStyle(color: Colors.black),),
                                                          onPressed:(){
                                                            _removerVocabulario(vocabulario.id);                                                            Navigator.pop(context);
                                                          },
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                )
                                                );
                                              },
                                              child: Padding(
                                                padding: EdgeInsets.only(right: 0),
                                                child: Icon(
                                                  Icons.delete,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  }
                              )
                          )
                        ],
                      ),
                    ),



                  ],
                ),
              )
            ],
          )
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xff5CE6B8),
          foregroundColor: Colors.white,
          child: Icon(Icons.add),
          onPressed: (){
            _exibirTelaCadastro();
          }
      ),
    );
  }
}
