// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticleList _$ArticleListFromJson(Map<String, dynamic> json) {
  return ArticleList(
    json['nickname'] as String,
    json['imageURLUser'] as String,
    json['article_imgpath'] as String,
    json['article_path'] as String,
    json['article_title'] as String,
    json['article_datetime'] == null
        ? null
        : DateTime.parse(json['article_datetime'] as String),
    json['article_description'] as String,
  );
}

Map<String, dynamic> _$ArticleListToJson(ArticleList instance) =>
    <String, dynamic>{
      'nickname': instance.nickName,
      'imageURLUser': instance.userImage,
      'article_imgpath': instance.imgPath,
      'article_path': instance.articlePath,
      'article_title': instance.title,
      'article_datetime': instance.publishDate?.toIso8601String(),
      'article_description': instance.description,
    };
