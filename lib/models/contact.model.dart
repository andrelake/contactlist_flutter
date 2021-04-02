class Contact {
  final String name;
  final int phoneNumber;

  Contact(this.name, this.phoneNumber);

  @override
  String toString() {
    return 'Contact{name: $name, phoneNumber: $phoneNumber}';
  }
}
