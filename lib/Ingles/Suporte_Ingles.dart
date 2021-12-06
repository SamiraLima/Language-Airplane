import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Suporte_Ingles extends StatefulWidget {
  const Suporte_Ingles({Key key}) : super(key: key);

  @override
  _Suporte_InglesState createState() => _Suporte_InglesState();
}

class _Suporte_InglesState extends State<Suporte_Ingles> {
  Future<void> _launchLink(String url) async {
    if(await canLaunch(url)){
      await launch(url, forceWebView: false, forceSafariVC: false);
    }else{
      print('Não pode executar o link $url');
    }

  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Suporte",
          style: TextStyle(
            color: Colors.black, fontStyle: FontStyle.normal,

          ),
        ),
        iconTheme: IconThemeData(
          color: Color(0xff5CE6B8),
          //change your color here
        ),
        centerTitle: true,
        elevation: 0,

      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Padding(
                padding: EdgeInsets.fromLTRB(0,20,160,0),
                child: Text(
                  "Enviar um relatório",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),


              Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "Se você tem alguma sugestão de melhoria ou algum problema com o aplicativo, por favor, nos envie um e-mail e faremos o possível para ajudar.",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              TextButton.icon(
                onPressed: () => _launchLink("mailto:koreanairplene@gmail.com"),
                label: Text(
                  "Mandar e-mail",
                  style: TextStyle(
                      color: Color(0xffDA70D6)
                  ),
                ),
                icon:Icon(Icons.email, color: Color(0xffDA70D6),) ,

              ),
            ],
          ),
        ),
      ),
    );
  }
}
