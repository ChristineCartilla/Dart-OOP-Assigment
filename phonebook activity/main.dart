import 'models/Contacts.dart';
import 'services/phoneAction.dart';

void main() {
  List<Contacts> person = <Contacts>[];
  person.add(Contacts("Allen", "Ventura",
      "Osmeña Bolivard,Santa Cruz,Cebu City", "09377442301"));
  person.add(Contacts(
      "Gabie", "Santos", "Gorordo Avenue,Lahug,Cebu City", "09377442301"));
  person.add(Contacts("Lyra", "Panganiban",
      "A.S. Fortuna Street,Bakilid,Mandaue City", "09448811947"));
  person.add(Contacts("Samantha", "Fernandez",
      "Tres Aliños Street,Poblacion,Talisay City", "09911154226"));
  person.add(Contacts(
      "Zane", "Cruz", "Dorado Street, Babag,Lapu-Lapu City", "09456643218"));

  PhoneAction contact = PhoneAction(person);
  contact.displayContacts();

  person.add(Contacts(
      "Willow", "Zante", "Bonifacio Street,Masilog,Danao City", "09237854367"));

  contact.displayContacts();

  contact.deleteContact("09911154226");

  contact.displayContacts();
  print("  ");
  contact.searchDisplayContact("09448811947");
}
