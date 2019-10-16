import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'deck_card.g.dart';

abstract class DeckCard implements Built<DeckCard, DeckCardBuilder> {
  int get deckId;

  String get deckTitle;

  String get namePortuguese;

  int get deckQuantity;

  double get costCardKingdom;

  double get costCardHoarder;

  DeckCard._();

  factory DeckCard([updates(DeckCardBuilder db)]) = _$DeckCard;

  static Serializer<DeckCard> get serializer => _$deckCardSerializer;
}
