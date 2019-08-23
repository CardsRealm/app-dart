import 'package:json_annotation/json_annotation.dart';

part 'article_list.g.dart';

@JsonSerializable()
class ArticleList {
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

  ArticleList(this.nickName, this.userImage, this.imgPath, this.articlePath,
      this.title, this.publishDate, this.description);

  factory ArticleList.fromJson(Map<String, dynamic> json) =>
      _$ArticleListFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleListToJson(this);
}
