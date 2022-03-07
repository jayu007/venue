// import 'package:path/path.dart';
// import 'package:project/model/login.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:sqflite/sqlite_api.dart';
//
// class userDatabase {
//   static final userDatabase instance = userDatabase._init();
//
//   static Database? _database;
//
//   userDatabase._init();
//
//   Future<Database> get database async {
//     if (_database != null) return _database!;
//
//     _database = await _initDB('user.db');
//     return _database!;
//   }
//
//   Future<Database> _initDB(String filePath) async {
//     final dbPath = await getDatabasesPath();
//     final path = join(dbPath, filePath);
//
//     return await openDatabase(path, version: 1, onCreate: _createDB);
//   }
//
//   Future _createDB(Database db, int version) async {
//     await db.execute(
//         "CREATE TABLE $tableUser('id INT PRIMARY KEY AUTOINCREMENT,name TEXT NOT NULL,email TEXT NOT NULL,number INTEGER NOT NULL,"
//         "pass TEXT NOT NULL,address TEXT NOT NULL,city TEXT NOT NULL,state TEXT NOT NULL,pincode INTEGER NOT NULL',bname TEXT NOT NULL,upi TEXT NOT NULL)");
//   }
//   // Future<List<userDatabase>> getUser() async {
//   //   Database db = await instance.database;
//   //   var userDetail = await db.query('$tableUser',orderBy: 'name');
//   //   List<userDetail> userlist = '$tableUser'.isNotEmpty ?
//   //   '$tableUser'.map(c) =>   }
//
//   // Future<userDetail> create(userDetail userdetail) async {
//   //   final db = await instance.database;
//   //   final id = await db.insert(tableUser, userDetail.toJson());
//   //   return userDetail(id: id);
//   // }
//   // Future<userDetail> create(userDetail userdetail) async {
//   //   final db = await instance.database;
//   //
//   //   final id = await db.insert(tableUser, userDetail.toJson());
//   //   return note.copy(id: id);
//   // }
//   //
//   // Future<Note> readNote(int id) async {
//   //   final db = await instance.database;
//   //
//   //   final maps = await db.query(
//   //     tableUser,
//   //     columns: NoteFields.values,
//   //     where: '${NoteFields.id} = ?',
//   //     whereArgs: [id],
//   //   );
//   //
//   //   if (maps.isNotEmpty) {
//   //     return Note.fromJson(maps.first);
//   //   } else {
//   //     throw Exception('ID $id not found');
//   //   }
//   // }
//   //
//   // Future<List<Note>> readAllNotes() async {
//   //   final db = await instance.database;
//   //
//   //   final orderBy = '${NoteFields.time} ASC';
//   //   // final result =
//   //   //     await db.rawQuery('SELECT * FROM $tableUser ORDER BY $orderBy');
//   //
//   //   final result = await db.query(tableUser, orderBy: orderBy);
//   //
//   //   return result.map((json) => Note.fromJson(json)).toList();
//   // }
//   //
//   // Future<int> update(Note note) async {
//   //   final db = await instance.database;
//   //
//   //   return db.update(
//   //     tableUser,
//   //     note.toJson(),
//   //     where: '${NoteFields.id} = ?',
//   //     whereArgs: [note.id],
//   //   );
//   // }
//   //
//   // Future<int> delete(int id) async {
//   //   final db = await instance.database;
//   //
//   //   return await db.delete(
//   //     tableUser,
//   //     where: '${NoteFields.id} = ?',
//   //     whereArgs: [id],
//   //   );
//   // }
//   //
//   Future<int> delete(int id) async {
//     final db = await instance.database;
//     return await db.delete(tableUser, where: 'id =?', whereArgs: [id]);
//   }
//
//   // Future close() async {
//   //   final db = await instance.database;
//   //
//   //   db.close();
//   // }
// }
