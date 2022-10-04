import 'models/Deck.dart';

void main() {
  var deck = new Deck();
  deck.printCards();
  deck.shuffle();
  print("/*********************************/");
  var shuffled = deck.cardsWithSuit('Spades');
  for (var mycard in shuffled) {
    print(mycard);
  }
}
