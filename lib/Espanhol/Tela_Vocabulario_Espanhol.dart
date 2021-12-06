import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:language_airplane/helper/VocabularioHelper_Espanhol.dart';
import 'package:language_airplane/model/Vocabulario_Espanhol.dart';

class Tela_Vocabulario_Espanhol extends StatefulWidget {
  @override
  _Tela_Vocabulario_EspanholState createState() => _Tela_Vocabulario_EspanholState();
}

class _Tela_Vocabulario_EspanholState extends State<Tela_Vocabulario_Espanhol> {
  TextEditingController _palavraController = TextEditingController();
  TextEditingController _traducaoController = TextEditingController();
  var _db = VocabularioHelper_Espanhol();
  List <Vocabulario_Espanhol> _vocabularios = List<Vocabulario_Espanhol>();
  List<Vocabulario_Espanhol> retorno = List<Vocabulario_Espanhol>();



  _exibirTelaCadastro( {Vocabulario_Espanhol vocabulario} ){
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
    List <Vocabulario_Espanhol> listaTemporaria = List<Vocabulario_Espanhol>();
    for( var item in vocabulariosRecuperadas ){

      Vocabulario_Espanhol vocabulario = Vocabulario_Espanhol.fromMap(item);
      listaTemporaria.add(vocabulario);

    }

    setState(() {
      _vocabularios = listaTemporaria;
    });
    listaTemporaria = null;

    print("Lista palavras " + vocabulariosRecuperadas.toString());

  }


  _salvarAtualizarVocabulario({Vocabulario_Espanhol vocabularioSelecionada}) async {

    String palavra = _palavraController.text;
    String traducao = _traducaoController.text;

    if(vocabularioSelecionada == null){//salvar

      Vocabulario_Espanhol vocabulario = Vocabulario_Espanhol(palavra, traducao);
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
              SizedBox(height: 10,),
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
                      padding: EdgeInsets.only(top: 60),
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
