import 'dart:io';

import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:z_pay/viewModel/card.dart';

class DatabaseHelper {
  static final DatabaseHelper intance = DatabaseHelper._instance();

  static Database? _db;

  DatabaseHelper._instance();

  final String tableName = "todo";

  final String colId = "id";
  final String colTitle = "title";
  final String colCardNumber = "cardNumber";
  final String colCardDate = "cardDate";

  Future<Database?> get db async {
    return _db ?? await _initDB();
  }

  Future<Database?> _initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = documentsDirectory.path + "todo.db";
    _db = await openDatabase(path, version: 1, onOpen: (db) {},
        onCreate: (Database db, int version) async {
      db.execute("CREATE TABLE $tableName ("
          "$colId INTEGER PRIMARY KEY,"
          "$colTitle TEXT,"
          "$colCardNumber TEXT,"
          "$colCardDate TEXT"
          ")");
    });
    return _db;
  }

  Future<PlasticCard> insert(PlasticCard card) async {
    final data = await db;
    card.id = await data?.insert(tableName, card.toMap());
    return card;
  }

  Future<List<Map<String, Object?>>?> getCardMap() async {
    final data = await db;
    final List<Map<String, Object?>>? result = await data?.query(tableName);
    return result;
  }

  Future<List<PlasticCard>> getCards() async {
    final List<Map<String, Object?>>? taskMap = await getCardMap();
    final List<PlasticCard> cards = [];
    taskMap?.forEach((element) {
      cards.add(PlasticCard.fromMap(element));
    });
    return cards;
  }
}
