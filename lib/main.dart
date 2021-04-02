import 'package:contactlist_flutter/screens/contact_list.screen.dart';
import 'package:contactlist_flutter/screens/home.screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ContactListApp());
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

