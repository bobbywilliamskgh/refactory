import 'package:sqflite/sqflite.dart' as sql;
import 'package:path/path.dart' as path;

class DBHelper {
  static Future<sql.Database> getDatabase() async {
    final dbPath = await sql.getDatabasesPath();
    return sql.openDatabase(
      path.join(dbPath, 'auth.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE login_story(id TEXT PRIMARY KEY, email TEXT, login_count INTEGER)',
        );
      },
      version: 1,
    );
  }

  static Future<void> insert(String table, Map<String, dynamic> data) async {
    final sqlDb = await DBHelper.getDatabase();
    await sqlDb.insert(
      table,
      data,
      conflictAlgorithm: sql.ConflictAlgorithm.replace,
    );
  }

  static Future<List<Map<String, dynamic>>> getData(
      String table, String email) async {
    final sqlDb = await DBHelper.getDatabase();
    return sqlDb.query(
      table,
      columns: ['id', 'email', 'login_count'],
      where: 'email = ?',
      whereArgs: [email],
    );
  }

  static Future<void> update(String table, Map<String, dynamic> data) async {
    final sqlDb = await DBHelper.getDatabase();
    await sqlDb.update(
      table,
      data,
      where: 'email = ?',
      whereArgs: [data['email']],
    );
  }
}
