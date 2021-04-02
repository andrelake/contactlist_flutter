import 'package:contactlist_flutter/components/card_contact.component.dart';
import 'package:contactlist_flutter/screens/contact_form.screen.dart';
import 'package:flutter/material.dart';

class ContactList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact List'),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              CardContact(
                'Joaozinho',
                '14988881234'
              )
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueAccent,
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => ContactForm()
              ),
          ).then((contact) => debugPrint(contact.toString()));
        },
      ),
    );
  }
}
