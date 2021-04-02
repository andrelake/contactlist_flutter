import 'package:flutter/material.dart';

class CardContact extends StatelessWidget {
  final String _name;
  final String _phone;

  CardContact(this._name, this._phone);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(_name,
          style: TextStyle(
              fontSize: 20
          ),
        ),
        subtitle: Text(_phone,
          style: TextStyle(
              fontSize: 16
          ),
        ),
      ),
    );
  }
}
