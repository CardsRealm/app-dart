import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'media.g.dart';

abstract class Media implements Built<Media, MediaBuilder> {
  String get imageURL;
  String get mediaURL;
  String get texto;
  DateTime get mediaDate;

  Media._();

  factory Media([updates(MediaBuilder mb)]) = _$Media;

  static Serializer<Media> get serializer => _$mediaSerializer;
}
