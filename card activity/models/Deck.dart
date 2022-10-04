import 'Card.dart';

class Deck {
  List<Card> _cards = [];

  Deck() {
    var ranks = [
      'Ace',
      'Two',
      'Three',
      'Four',
      'Five',
      'Six',
      'Seven',
      'Eight',
      'Nine',
      'Ten',
      'Jack',
      'Queen',
      'King'
    ];
    var suits = ['Clubs', 'Diamonds', 'Hearts', 'Spades'];

    for (var suit in suits) {
      for (var rank in ranks) {
        var card = new Card(rank, suit);
        _cards.add(card);
      }
    }
  }

  toString() {
    return _cards.toString();
  }

  void printCards() {
    for (var card in _cards) {
      print(card);
    }
  }

  void shuffle() {
    _cards.shuffle();
  }

  cardsWithSuit(String suit) {
    return _cards.where((card) => card.suit == suit);
  }
}
