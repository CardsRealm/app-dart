import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'card.g.dart';

abstract class Card implements Built<Card, CardBuilder> {
  int get deck_id;
  String get deck_title;
  String get deck_path;
  String get name_por;
  int get deck_quantity;
  String get set_image;
  double get price_cardkingdom;
  double get price_cardhoarder;

  Card._();

  factory Card([updates(CardBuilder cb)]) = _$Card;

  static Serializer<Card> get serializer => _$cardSerializer;
}
