import 'package:language_airplane/model/Vocabulario_Ingles.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class VocabularioHelper_Ingles{

  static final String nomeTabela = "vocabulario";

  static final VocabularioHelper_Ingles _vocabularioHelper = VocabularioHelper_Ingles._internal();
  Database _dbi;

  factory VocabularioHelper_Ingles(){
    return _vocabularioHelper;
  }

  VocabularioHelper_Ingles._internal(){

  }

  get db async {

    if( _dbi != null ){
      return _dbi;
    }

    else{
      _dbi = await inicializarDBI();
      return _dbi;
    }

  }

  _onCreate(Database db, int version) async{

    String sql = "CREATE TABLE $nomeTabela (id INTEGER PRIMARY KEY AUTOINCREMENT, palavra VARCHAR, traducao TEXT)";
    await db.execute(sql);

  }

  inicializarDBI() async {
    final caminhoBancoDados = await getDatabasesPath();
    final localBancoDados = join(caminhoBancoDados, "banco_meu_vocabulario.dbi");

    var db = await openDatabase(localBancoDados, version: 1, onCreate: _onCreate );
    return db;
  }

  Future<int>salvarVocabulario(Vocabulario_Ingles vocabulario) async {

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

  Future<int> atualizarVocabulario(Vocabulario_Ingles vocabulario) async {

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