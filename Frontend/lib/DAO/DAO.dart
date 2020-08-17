import 'package:flutter/material.dart';

import 'dart:io';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

class DatabaseHelperSisoCare {
  static final _databaseName = "MyDatabase.db";
  static final _databaseVersion = 1;
//TABLAS

// ATRIBUTOS

  DatabaseHelperSisoCare._privateConstructor();
  static final DatabaseHelperSisoCare instance =
      DatabaseHelperSisoCare._privateConstructor();

  static Database _database;
  Future<Database> get database async {
    if (_database != null) return _database;

    _database = await _initDatabase();
    return _database;
  }

  _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, _databaseName);
    return await openDatabase(path,
        version: _databaseVersion, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {}

  Future<int> insert(Map<String, dynamic> row) async {
    ;
  }

  Future<List<Map<String, dynamic>>> queryAllRows() async {}

  Future<int> queryRowCount() async {}

  Future<int> update(Map<String, dynamic> row) async {}

  Future<int> delete(int id) async {}
}
