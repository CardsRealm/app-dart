// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Article _$ArticleFromJson(Map<String, dynamic> json) {
  return Article(
    json['nickname'] as String,
    json['imageURLUser'] as String,
    json['article_imgpath'] as String,
    json['article_title'] as String,
    json['article_txt'] as String,
    json['likes'] as int,
    json['article_views'] as int,
  );
}

Map<String, dynamic> _$ArticleToJson(Article instance) => <String, dynamic>{
      'nickname': instance.nickName,
      'imageURLUser': instance.userImage,
      'article_imgpath': instance.imgPath,
      'article_title': instance.title,
      'article_txt': instance.texto,
      'likes': instance.likes,
      'article_views': instance.views,
    };
