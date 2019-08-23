// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Media _$MediaFromJson(Map<String, dynamic> json) {
  return Media(
    json['media_link_image'] as String,
    json['media_link_link'] as String,
    json['media_link_text'] as String,
    json['media_link_date'] == null
        ? null
        : DateTime.parse(json['media_link_date'] as String),
  );
}

Map<String, dynamic> _$MediaToJson(Media instance) => <String, dynamic>{
      'media_link_image': instance.imageURL,
      'media_link_link': instance.mediaURL,
      'media_link_text': instance.texto,
      'media_link_date': instance.mediaDate?.toIso8601String(),
    };
