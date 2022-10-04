import '../models/Contacts.dart';

class PhoneAction {
  List<Contacts> _phonebook;

  PhoneAction(this._phonebook);

  void displayContacts() {
    print("  ");
    for (var contact in _phonebook) {
      print("-----------------------------------");
      print("Number: ${contact.phone_number}");
      print("Name: ${contact.first_name} ${contact.last_name} ");
      print("Address: ${contact.address}");
    }
    print("  ");
  }

  void searchDisplayContact(String phoneNumber) {
    var person =
        _phonebook.where((contact) => contact.phone_number == phoneNumber);

    print("  ");
    for (var details in person) {
      print("-----------------------------------");
      print("Number: ${details.phone_number}");
      print("Name: ${details.first_name} ${details.last_name} ");
      print("Address: ${details.address}");
    }
    print("  ");
  }

  void deleteContact(String phoneNumber) {
    _phonebook.removeWhere((contact) => contact.phone_number == phoneNumber);
  }

  // void addAContact(Contacts new_contact){

  // }

}
