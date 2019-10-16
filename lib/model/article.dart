import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'article.g.dart';

abstract class Article implements Built<Article, ArticleBuilder> {
  String get nickName;

  String get userImage;

  String get imgPath;

  String get title;

  String get texto;

  int get likes;

  int get views;

  Article._();

  factory Article([updates(ArticleBuilder ab)]) = _$Article;

  static Serializer<Article> get serializer => _$articleSerializer;
}
