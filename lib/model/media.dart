import 'package:json_annotation/json_annotation.dart';

part 'media.g.dart';

@JsonSerializable()
class Media {
  @JsonKey(name: 'media_link_image')
  final String imageURL;

  @JsonKey(name: 'media_link_link')
  final String mediaURL;

  @JsonKey(name: 'media_link_text')
  final String texto;

  @JsonKey(name: 'media_link_date')
  final DateTime mediaDate;

  Media(this.imageURL, this.mediaURL, this.texto, this.mediaDate);

  factory Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);

  Map<String, dynamic> toJson() => _$MediaToJson(this);
}
