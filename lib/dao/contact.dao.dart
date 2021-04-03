import 'package:contactlist_flutter/db/app_database.dart';
import 'package:contactlist_flutter/models/contact.model.dart';
import 'package:sqflite/sqflite.dart';

class ContactDao {

  static const String tableSql = 'CREATE TABLE $_tableName('
      'id INTEGER PRIMARY KEY, '
      'name TEXT, '
      'phone_number INTEGER)';

  static const String _tableName = 'contacts';

  Future<int> save(Contact contact) async {
    final Database db = await getDatabase();
    Map<String, dynamic> contactMap = contactsToMap(contact);
    return db.insert(_tableName, contactMap);
  }

  Future<List<Contact>> findAll() async {
    final Database db = await getDatabase();
    final List<Map<String, dynamic>> result = await db.query(_tableName);
    List<Contact> contacts = mapToList(result);
    return contacts;
  }

  //utils
  Map<String, dynamic> contactsToMap(Contact contact) {
    final Map<String, dynamic> contactMap = Map();
    contactMap['name'] = contact.name;
    contactMap['phone_number'] = contact.phoneNumber;
    return contactMap;
  }

  List<Contact> mapToList(List<Map<String, dynamic>> result) {
    final List<Contact> contacts = [];
    for(Map<String, dynamic> row in result) {
      final Contact contact = Contact(row['id'], row['name'], row['phone_number']);
      contacts.add(contact);
    }
    return contacts;
  }
}
