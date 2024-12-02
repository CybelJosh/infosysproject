import 'package:flutter/foundation.dart';

import '/backend/sqlite/init.dart';
import 'queries/read.dart';
import 'queries/update.dart';

import 'package:sqflite/sqflite.dart';
export 'queries/read.dart';
export 'queries/update.dart';

class SQLiteManager {
  SQLiteManager._();

  static SQLiteManager? _instance;
  static SQLiteManager get instance => _instance ??= SQLiteManager._();

  static late Database _database;
  Database get database => _database;

  static Future initialize() async {
    if (kIsWeb) {
      return;
    }
    _database = await initializeDatabaseFromDbFile(
      'db_app',
      'dbApp.db',
    );
  }

  /// START READ QUERY CALLS

  Future<List<CreateAccountRow>> createAccount() => performCreateAccount(
        _database,
      );

  Future<List<SelectEmployeeRow>> selectEmployee() => performSelectEmployee(
        _database,
      );

  /// END READ QUERY CALLS

  /// START UPDATE QUERY CALLS

  Future insert({
    String? emailAddress,
    String? password,
    String? firstName,
    String? lastName,
  }) =>
      performInsert(
        _database,
        emailAddress: emailAddress,
        password: password,
        firstName: firstName,
        lastName: lastName,
      );

  Future insertEmployee({
    String? firstName,
    String? middleName,
    String? lastName,
    int? contacts,
    String? emailAddress,
    int? age,
    String? jobPosition,
  }) =>
      performInsertEmployee(
        _database,
        firstName: firstName,
        middleName: middleName,
        lastName: lastName,
        contacts: contacts,
        emailAddress: emailAddress,
        age: age,
        jobPosition: jobPosition,
      );

  /// END UPDATE QUERY CALLS
}
