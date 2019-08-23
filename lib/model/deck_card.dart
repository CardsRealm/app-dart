import 'package:json_annotation/json_annotation.dart';

part 'deck_card.g.dart';

@JsonSerializable()
class DeckCard {
  @JsonKey(name: 'deck_id')
  final int deckId;

  @JsonKey(name: 'deck_title')
  final String deckTitle;

  @JsonKey(name: 'name_por')
  final String namePortuguese;

  @JsonKey(name: 'deck_quantity')
  final int deckQuantity;

  @JsonKey(name: 'total_cost_cardkingdom')
  final double costCardKingdom;

  @JsonKey(name: 'total_cost_cardhoarder')
  final double costCardHoarder;

  DeckCard(this.deckId, this.deckTitle, this.namePortuguese, this.deckQuantity,
      this.costCardKingdom, this.costCardHoarder);

  factory DeckCard.fromJson(Map<String, dynamic> json) =>
      _$DeckCardFromJson(json);

  Map<String, dynamic> toJson() => _$DeckCardToJson(this);
}
