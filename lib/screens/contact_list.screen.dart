import 'package:contactlist_flutter/components/card_contact.component.dart';
import 'package:contactlist_flutter/db/app_database.dart';
import 'package:contactlist_flutter/models/contact.model.dart';
import 'package:contactlist_flutter/screens/contact_form.screen.dart';
import 'package:flutter/material.dart';

class ContactList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact List'),
      ),
      body: FutureBuilder<List<Contact>>(
        initialData: [],
        future: findAll(),
        builder: (context, snapshot) {
          switch(snapshot.connectionState) {
            case ConnectionState.none:
              break;
            case ConnectionState.waiting:
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(),
                    Text('Loading')
                  ],
                ),
              );
              break;
            case ConnectionState.active:
              break;
            case ConnectionState.done:
              final List<Contact> contacts = snapshot.data;
              return ListView.builder(
                itemBuilder: (context, index) {
                  final Contact contact = contacts[index];
                  return CardContact(contact);
                },
                itemCount: contacts.length,
              );
              break;
          }
          return Text('Error - Please contact the support');
        },
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
