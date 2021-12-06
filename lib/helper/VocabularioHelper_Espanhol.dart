import 'package:language_airplane/model/Vocabulario_Espanhol.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class VocabularioHelper_Espanhol{

  static final String nomeTabela = "vocabulario";

  static final VocabularioHelper_Espanhol _vocabularioHelper = VocabularioHelper_Espanhol._internal();
  Database _dbe;

  factory VocabularioHelper_Espanhol(){
    return _vocabularioHelper;
  }

  VocabularioHelper_Espanhol._internal(){

  }

  get db async {

    if( _dbe != null ){
      return _dbe;
    }

    else{
      _dbe = await inicializarDBE();
      return _dbe;
    }

  }

  _onCreate(Database db, int version) async{

    String sql = "CREATE TABLE $nomeTabela (id INTEGER PRIMARY KEY AUTOINCREMENT, palavra VARCHAR, traducao TEXT)";
    await db.execute(sql);

  }

  inicializarDBE() async {
    final caminhoBancoDados = await getDatabasesPath();
    final localBancoDados = join(caminhoBancoDados, "banco_meu_vocabulario.dbe");

    var dbe = await openDatabase(localBancoDados, version: 1, onCreate: _onCreate );
    return dbe;
  }

  Future<int>salvarVocabulario(Vocabulario_Espanhol vocabulario) async {

    var bancoDados = await db;
    int resultado = await bancoDados.insert(nomeTabela, vocabulario.toMap());
    return resultado;


  }

  recuperarPalavras() async {
    var bancoDados = await db;
    String sql = "SELECT * FROM $nomeTabela ORDER BY palavra ";
    List vacabulario = await bancoDados.rawQuery(sql);
    return vacabulario;
  }

  Future<int> atualizarVocabulario(Vocabulario_Espanhol vocabulario) async {

    var bancoDados = await db;
    return await bancoDados.update(
        nomeTabela,
        vocabulario.toMap(),
        where: "id = ?",
        whereArgs: [vocabulario.id]
    );



  }

  Future<int> removerVocabulario(int id)async{

    var bancoDados = await db;
    return await bancoDados.delete(
        nomeTabela,
        where: "id = ?",
        whereArgs: [id]

    );

  }
}