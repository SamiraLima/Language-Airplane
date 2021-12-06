import 'package:flutter/material.dart';
import 'package:flutter_dialogflow/dialogflow_v2.dart';
import 'package:intl/intl.dart';

class Chat_Espanhol extends StatefulWidget {
  const Chat_Espanhol({Key key}) : super(key: key);

  @override
  _Chat_EspanholState createState() => _Chat_EspanholState();
}

class _Chat_EspanholState extends State<Chat_Espanhol> {
  final TextEditingController _textoControle = TextEditingController();
  final List<Mensagem> _mensagens = <Mensagem>[];

  void _getMensagem(query)async{
    AuthGoogle authGoogle = await AuthGoogle(fileJson:"assets/espanhollanguage-ejfn-badd5a1be57c.json").build();
    Dialogflow dialogflow =
    Dialogflow(authGoogle: authGoogle, language: Language.spanish);
    AIResponse response = await dialogflow.detectIntent(query);

    Mensagem message = Mensagem(
      texto: response.getMessage() ??
          CardDialogflow(response.getListMessage()[0],).title,
      nome: "Amigo",
      isMyMessage: false,
    );
    setState(() {
      _mensagens.insert(0, message);
    });
  }

  void _sendMensagem(String text){
    _textoControle.clear();
    Mensagem message = Mensagem(
      texto: text,
      nome: "Me",
      isMyMessage: true,
    );
    setState(() {
      _mensagens.insert(0, message);
    });
    _getMensagem(text);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(85),
          child: Text(
            "CHAT",
            style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
        elevation: 0,
        backgroundColor: Color(0xff5CE6B8),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 15, bottom: 10),
              child: Text("Hoje, ${DateFormat("Hm").format(DateTime.now())}", style: TextStyle(
                  fontSize: 20
              ),),
            ),
            Flexible(
                child: ListView.builder(
                  padding: EdgeInsets.all(8.0),
                  reverse: true,
                  itemBuilder: (_, int index) => _mensagens[index],
                  itemCount: _mensagens.length,
                )),
            Divider(height: 1.0),
            Container(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: <Widget>[
                    Flexible(
                      child: TextField(
                        controller: _textoControle,
                        autocorrect: false,
                        enableSuggestions: false,
                        onSubmitted: _sendMensagem,
                        decoration: InputDecoration(
                          hintText: "Digite uma mensagem",
                          hintStyle: TextStyle(
                              color: Colors.black26
                          ),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                        ),
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 4.0),
                      child: IconButton(
                        icon: Icon(Icons.send),
                        onPressed: () => _sendMensagem(_textoControle.text),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class Mensagem extends StatelessWidget {
  final String texto;
  final String nome;
  final bool isMyMessage;

  Mensagem({
    this.texto,
    this.nome,
    this.isMyMessage,
  });

  List<Widget> botMessage(context) {
    return <Widget>[
      Container(
        margin: const EdgeInsets.only(right: 16.0),
        child: CircleAvatar(
          child: Text(this.nome[0]),
          backgroundColor: Color(0xff5CE6B8),
        ),
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              this.nome,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Container(
              margin: const EdgeInsets.only(top: 5.0),
              child: Text(texto),
            ),
          ],
        ),
      ),
    ];
  }

  List<Widget> myMessage(context) {
    return <Widget>[
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text(
              this.nome,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Container(
              margin: const EdgeInsets.only(top: 5.0),
              child: Text(texto),
            ),
          ],
        ),
      ),
      Container(
        margin: const EdgeInsets.only(left: 16.0),
        child: CircleAvatar(
          backgroundColor: Color(0xffDA70D6),
          child: Text(this.nome[0]),
        ),
      ),
    ];
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: this.isMyMessage ? myMessage(context) : botMessage(context),
      ),
    );
  }
}
