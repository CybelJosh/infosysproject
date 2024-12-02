import 'package:sqflite/sqflite.dart';

/// BEGIN INSERT
Future performInsert(
  Database database, {
  String? emailAddress,
  String? password,
  String? firstName,
  String? lastName,
}) {
  final query = '''
INSERT INTO CreateAccount (firstName, lastName, emailAddress, password) 
VALUES ('$firstName', '$lastName', '$emailAddress', '$password');
''';
  return database.rawQuery(query);
}

/// END INSERT

/// BEGIN INSERTEMPLOYEE
Future performInsertEmployee(
  Database database, {
  String? firstName,
  String? middleName,
  String? lastName,
  int? contacts,
  String? emailAddress,
  int? age,
  String? jobPosition,
}) {
  final query = '''
INSERT INTO addEmployee (firstName, middleName, lastName, contacts, emailAddress, age, jobPosition) 
VALUES ('$firstName', '$middleName', '$lastName', '$contacts', '$emailAddress', '$age', '$jobPosition');
''';
  return database.rawQuery(query);
}

/// END INSERTEMPLOYEE
