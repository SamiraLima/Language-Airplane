import 'package:flutter/material.dart';
import 'Senha_Espanhol.dart';
import 'NomeEmail_Espanhol.dart';

class Atualizar_Dados_Espanhol extends StatefulWidget {
  const Atualizar_Dados_Espanhol({Key key}) : super(key: key);

  @override
  _Atualizar_Dados_EspanholState createState() => _Atualizar_Dados_EspanholState();
}

class _Atualizar_Dados_EspanholState extends State<Atualizar_Dados_Espanhol>with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Atualizar Dados",
          style: TextStyle(
            color: Colors.black, fontStyle: FontStyle.normal,

          ),
        ),
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Color(0xff5CE6B8),
          labelColor: Colors.black,
          unselectedLabelColor: Color(0xffDA70D6),
          tabs: [
            Tab(text:"Nome e Email"),
            Tab(text: "Senha",)
          ],
        ),
        iconTheme: IconThemeData(
          color: Color(0xff5CE6B8),
          //change your color here
        ),
        centerTitle: true,
        elevation: 0,

      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          NomeEmail_Espanhol(),
          Senha_Espanhol(),
        ],
      ),
    );
  }
}
