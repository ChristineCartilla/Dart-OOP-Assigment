import 'User.dart';

class Contacts extends User {
  String phone_number;
  String address;

  Contacts(String first_name, String last_name, this.address, this.phone_number)
      : super(first_name, last_name);
}
