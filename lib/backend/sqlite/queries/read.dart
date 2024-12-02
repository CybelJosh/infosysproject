import '/backend/sqlite/queries/sqlite_row.dart';
import 'package:sqflite/sqflite.dart';

Future<List<T>> _readQuery<T>(
  Database database,
  String query,
  T Function(Map<String, dynamic>) create,
) =>
    database.rawQuery(query).then((r) => r.map((e) => create(e)).toList());

/// BEGIN CREATEACCOUNT
Future<List<CreateAccountRow>> performCreateAccount(
  Database database,
) {
  const query = '''
SELECT id, emailAddress, password, firstName, lastName FROM CreateAccount
''';
  return _readQuery(database, query, (d) => CreateAccountRow(d));
}

class CreateAccountRow extends SqliteRow {
  CreateAccountRow(super.data);

  int get id => data['id'] as int;
  String get emailAddress => data['emailAddress'] as String;
  String get password => data['password'] as String;
  String get firstName => data['firstName'] as String;
  String get lastName => data['lastName'] as String;
}

/// END CREATEACCOUNT

/// BEGIN SELECTEMPLOYEE
Future<List<SelectEmployeeRow>> performSelectEmployee(
  Database database,
) {
  const query = '''
SELECT * FROM addEmployee
''';
  return _readQuery(database, query, (d) => SelectEmployeeRow(d));
}

class SelectEmployeeRow extends SqliteRow {
  SelectEmployeeRow(super.data);

  int get id => data['id'] as int;
  String get firstName => data['firstName'] as String;
  String? get middleName => data['middleName'] as String?;
  String get lastName => data['lastName'] as String;
  int get contacts => data['contacts'] as int;
  String get emailAddress => data['emailAddress'] as String;
  int get age => data['age'] as int;
  String get jobPosition => data['jobPosition'] as String;
}

/// END SELECTEMPLOYEE
