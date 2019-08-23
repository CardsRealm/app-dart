// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deck_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeckCard _$DeckCardFromJson(Map<String, dynamic> json) {
  return DeckCard(
    json['deck_id'] as int,
    json['deck_title'] as String,
    json['name_por'] as String,
    json['deck_quantity'] as int,
    (json['total_cost_cardkingdom'] as num)?.toDouble(),
    (json['total_cost_cardhoarder'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$DeckCardToJson(DeckCard instance) => <String, dynamic>{
      'deck_id': instance.deckId,
      'deck_title': instance.deckTitle,
      'name_por': instance.namePortuguese,
      'deck_quantity': instance.deckQuantity,
      'total_cost_cardkingdom': instance.costCardKingdom,
      'total_cost_cardhoarder': instance.costCardHoarder,
    };
