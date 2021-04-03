import 'package:contactlist_flutter/db/app_database.dart';
import 'package:contactlist_flutter/screens/home.screen.dart';
import 'package:flutter/material.dart';

import 'models/contact.model.dart';

void main() {
  runApp(ContactListApp());
  findAll()
    .then((contacts) => debugPrint(contacts.toString()));
}

class ContactListApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen()
    );
  }
}

