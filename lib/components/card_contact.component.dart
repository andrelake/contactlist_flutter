import 'package:contactlist_flutter/models/contact.model.dart';
import 'package:flutter/material.dart';

class CardContact extends StatelessWidget {
  final Contact contact;

  CardContact(this.contact);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(contact.name,
          style: TextStyle(
              fontSize: 20
          ),
        ),
        subtitle: Text(contact.phoneNumber.toString(),
          style: TextStyle(
              fontSize: 16
          ),
        ),
      ),
    );
  }
}
