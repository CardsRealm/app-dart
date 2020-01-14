import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'metagame.g.dart';

abstract class Metagame implements Built<Metagame, MetagameBuilder> {
  String get decks_meta_crop_image;
  String get decks_meta_name;
  int get percentagem; //Dividir por 10
  int get decks_meta_price_real; // Dividir por 100
  String get deck_path;
  String get decks_meta_path;
  int get decks_meta_format;

  Metagame._();

  factory Metagame([updates(MetagameBuilder mb)]) = _$Metagame;

  static Serializer<Metagame> get serializer => _$metagameSerializer;
}
