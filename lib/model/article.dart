import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'article.g.dart';

abstract class Article implements Built<Article, ArticleBuilder> {
  String get nickname;

  String get imageURLUser;

  String get article_imgpath;

  String get article_title;

  String get article_txt;

  int get likes;

  int get article_views;

  DateTime get date;

  Article._();

  factory Article([updates(ArticleBuilder ab)]) = _$Article;

  static Serializer<Article> get serializer => _$articleSerializer;
}
