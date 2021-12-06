import 'package:language_airplane/model/Vocabulario_Coreano.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class VocabularioHelper_Coreano{

  static final String nomeTabela = "vocabulario";

  static final VocabularioHelper_Coreano _vocabularioHelper = VocabularioHelper_Coreano._internal();
  Database _db;

  factory VocabularioHelper_Coreano(){
    return _vocabularioHelper;
  }

  VocabularioHelper_Coreano._internal(){

  }

  get db async {

    if( _db != null ){
       return _db;
    }

    else{
      _db = await inicializarDB();
      return _db;
    }

  }

  _onCreate(Database db, int version) async{

    String sql = "CREATE TABLE $nomeTabela (id INTEGER PRIMARY KEY AUTOINCREMENT, palavra VARCHAR, traducao TEXT)";
    await db.execute(sql);

  }

  inicializarDB() async {
    final caminhoBancoDados = await getDatabasesPath();
    final localBancoDados = join(caminhoBancoDados, "banco_meu_vocabulario.db");

    var db = await openDatabase(localBancoDados, version: 1, onCreate: _onCreate );
    return db;
  }

  Future<int>salvarVocabulario(Vocabulario_Coreano vocabulario) async {

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

  Future<int> atualizarVocabulario(Vocabulario_Coreano vocabulario) async {

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