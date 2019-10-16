import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'article_item_list.g.dart';

abstract class ArticleItemList
    implements Built<ArticleItemList, ArticleItemListBuilder> {
  String get nickname;

  String get imageURLUser;

  String get article_imgpath;

  String get article_path;

  String get article_title;

  //DateTime get article_datetime;

  String get article_description;

  ArticleItemList._();

  factory ArticleItemList([updates(ArticleItemListBuilder ab)]) =
      _$ArticleItemList;

  static Serializer<ArticleItemList> get serializer =>
      _$articleItemListSerializer;
}
