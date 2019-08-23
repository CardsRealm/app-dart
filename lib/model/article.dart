import 'package:json_annotation/json_annotation.dart';

part 'article.g.dart';

@JsonSerializable()
class Article {
  @JsonKey(name: 'nickname')
  final String nickName;

  @JsonKey(name: 'imageURLUser')
  final String userImage;

  @JsonKey(name: 'article_imgpath')
  final String imgPath;

  @JsonKey(name: 'article_title')
  final String title;

  @JsonKey(name: 'article_txt')
  final String texto;

  @JsonKey(name: 'likes')
  final int likes;

  @JsonKey(name: 'article_views')
  final int views;

  Article(this.nickName, this.userImage, this.imgPath, this.title, this.texto,
      this.likes, this.views);

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleToJson(this);
}
