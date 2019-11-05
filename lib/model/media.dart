import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'media.g.dart';

abstract class Media implements Built<Media, MediaBuilder> {
  String get media_link_image;
  String get media_link_link;
  String get media_link_text;
  //DateTime get media_link_date;

  Media._();

  factory Media([updates(MediaBuilder mb)]) = _$Media;

  static Serializer<Media> get serializer => _$mediaSerializer;
}
