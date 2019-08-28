// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_item_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticleItemList _$ArticleItemListFromJson(Map<String, dynamic> json) {
  return ArticleItemList(
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

Map<String, dynamic> _$ArticleItemListToJson(ArticleItemList instance) =>
    <String, dynamic>{
      'nickname': instance.nickName,
      'imageURLUser': instance.userImage,
      'article_imgpath': instance.imgPath,
      'article_path': instance.articlePath,
      'article_title': instance.title,
      'article_datetime': instance.publishDate?.toIso8601String(),
      'article_description': instance.description,
    };
