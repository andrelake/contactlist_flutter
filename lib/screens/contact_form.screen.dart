import 'package:contactlist_flutter/models/contact.model.dart';
import 'package:contactlist_flutter/screens/contact_list.screen.dart';
import 'package:flutter/material.dart';

class ContactForm extends StatefulWidget {
  @override
  _ContactFormState createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create contact'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Name',
              ),
              style: TextStyle(
                fontSize: 20
              ),
            ),
            TextField(
              controller: _phoneNumberController,
              decoration: InputDecoration(
                labelText: 'Phone number',
              ),
              style: TextStyle(
                fontSize: 20
              ),
              keyboardType: TextInputType.phone,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                    onPressed: () {
                      final String name = _nameController.text;
                      final int phoneNumber = int.tryParse(_phoneNumberController.text);

                      final Contact contact = Contact(name, phoneNumber);

                      Navigator.pop(context, contact);
                    },
                    child: Text('Confirm')
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
