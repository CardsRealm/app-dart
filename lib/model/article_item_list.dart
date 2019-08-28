import 'package:json_annotation/json_annotation.dart';

part 'article_item_list.g.dart';

@JsonSerializable()
class ArticleItemList {
  @JsonKey(name: 'nickname')
  final String nickName;

  @JsonKey(name: 'imageURLUser')
  final String userImage;

  @JsonKey(name: 'article_imgpath')
  final String imgPath;

  @JsonKey(name: 'article_path')
  final String articlePath;

  @JsonKey(name: 'article_title')
  final String title;

  @JsonKey(name: 'article_datetime')
  final DateTime publishDate;

  @JsonKey(name: 'article_description')
  final String description;

  ArticleItemList(this.nickName, this.userImage, this.imgPath, this.articlePath,
      this.title, this.publishDate, this.description);

  factory ArticleItemList.fromJson(Map<String, dynamic> json) =>
      _$ArticleItemListFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleItemListToJson(this);
}
