class Contact {
  final int id;
  final String name;
  final int phoneNumber;

  Contact(this.id, this.name, this.phoneNumber);

  @override
  String toString() {
    return 'Contact{id: $id, name: $name, phoneNumber: $phoneNumber}';
  }
}
