// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Article> _$articleSerializer = new _$ArticleSerializer();

class _$ArticleSerializer implements StructuredSerializer<Article> {
  @override
  final Iterable<Type> types = const [Article, _$Article];
  @override
  final String wireName = 'Article';

  @override
  Iterable<Object> serialize(Serializers serializers, Article object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'nickname',
      serializers.serialize(object.nickname,
          specifiedType: const FullType(String)),
      'imageURLUser',
      serializers.serialize(object.imageURLUser,
          specifiedType: const FullType(String)),
      'article_imgpath',
      serializers.serialize(object.article_imgpath,
          specifiedType: const FullType(String)),
      'article_title',
      serializers.serialize(object.article_title,
          specifiedType: const FullType(String)),
      'article_txt',
      serializers.serialize(object.article_txt,
          specifiedType: const FullType(String)),
      'likes',
      serializers.serialize(object.likes, specifiedType: const FullType(int)),
      'article_views',
      serializers.serialize(object.article_views,
          specifiedType: const FullType(int)),
      'date',
      serializers.serialize(object.date,
          specifiedType: const FullType(DateTime)),
    ];

    return result;
  }

  @override
  Article deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ArticleBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'nickname':
          result.nickname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'imageURLUser':
          result.imageURLUser = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'article_imgpath':
          result.article_imgpath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'article_title':
          result.article_title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'article_txt':
          result.article_txt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'likes':
          result.likes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'article_views':
          result.article_views = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
      }
    }

    return result.build();
  }
}

class _$Article extends Article {
  @override
  final String nickname;
  @override
  final String imageURLUser;
  @override
  final String article_imgpath;
  @override
  final String article_title;
  @override
  final String article_txt;
  @override
  final int likes;
  @override
  final int article_views;
  @override
  final DateTime date;

  factory _$Article([void Function(ArticleBuilder) updates]) =>
      (new ArticleBuilder()..update(updates)).build();

  _$Article._(
      {this.nickname,
      this.imageURLUser,
      this.article_imgpath,
      this.article_title,
      this.article_txt,
      this.likes,
      this.article_views,
      this.date})
      : super._() {
    if (nickname == null) {
      throw new BuiltValueNullFieldError('Article', 'nickname');
    }
    if (imageURLUser == null) {
      throw new BuiltValueNullFieldError('Article', 'imageURLUser');
    }
    if (article_imgpath == null) {
      throw new BuiltValueNullFieldError('Article', 'article_imgpath');
    }
    if (article_title == null) {
      throw new BuiltValueNullFieldError('Article', 'article_title');
    }
    if (article_txt == null) {
      throw new BuiltValueNullFieldError('Article', 'article_txt');
    }
    if (likes == null) {
      throw new BuiltValueNullFieldError('Article', 'likes');
    }
    if (article_views == null) {
      throw new BuiltValueNullFieldError('Article', 'article_views');
    }
    if (date == null) {
      throw new BuiltValueNullFieldError('Article', 'date');
    }
  }

  @override
  Article rebuild(void Function(ArticleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ArticleBuilder toBuilder() => new ArticleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Article &&
        nickname == other.nickname &&
        imageURLUser == other.imageURLUser &&
        article_imgpath == other.article_imgpath &&
        article_title == other.article_title &&
        article_txt == other.article_txt &&
        likes == other.likes &&
        article_views == other.article_views &&
        date == other.date;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc(0, nickname.hashCode),
                                imageURLUser.hashCode),
                            article_imgpath.hashCode),
                        article_title.hashCode),
                    article_txt.hashCode),
                likes.hashCode),
            article_views.hashCode),
        date.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Article')
          ..add('nickname', nickname)
          ..add('imageURLUser', imageURLUser)
          ..add('article_imgpath', article_imgpath)
          ..add('article_title', article_title)
          ..add('article_txt', article_txt)
          ..add('likes', likes)
          ..add('article_views', article_views)
          ..add('date', date))
        .toString();
  }
}

class ArticleBuilder implements Builder<Article, ArticleBuilder> {
  _$Article _$v;

  String _nickname;
  String get nickname => _$this._nickname;
  set nickname(String nickname) => _$this._nickname = nickname;

  String _imageURLUser;
  String get imageURLUser => _$this._imageURLUser;
  set imageURLUser(String imageURLUser) => _$this._imageURLUser = imageURLUser;

  String _article_imgpath;
  String get article_imgpath => _$this._article_imgpath;
  set article_imgpath(String article_imgpath) =>
      _$this._article_imgpath = article_imgpath;

  String _article_title;
  String get article_title => _$this._article_title;
  set article_title(String article_title) =>
      _$this._article_title = article_title;

  String _article_txt;
  String get article_txt => _$this._article_txt;
  set article_txt(String article_txt) => _$this._article_txt = article_txt;

  int _likes;
  int get likes => _$this._likes;
  set likes(int likes) => _$this._likes = likes;

  int _article_views;
  int get article_views => _$this._article_views;
  set article_views(int article_views) => _$this._article_views = article_views;

  DateTime _date;
  DateTime get date => _$this._date;
  set date(DateTime date) => _$this._date = date;

  ArticleBuilder();

  ArticleBuilder get _$this {
    if (_$v != null) {
      _nickname = _$v.nickname;
      _imageURLUser = _$v.imageURLUser;
      _article_imgpath = _$v.article_imgpath;
      _article_title = _$v.article_title;
      _article_txt = _$v.article_txt;
      _likes = _$v.likes;
      _article_views = _$v.article_views;
      _date = _$v.date;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Article other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Article;
  }

  @override
  void update(void Function(ArticleBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Article build() {
    final _$result = _$v ??
        new _$Article._(
            nickname: nickname,
            imageURLUser: imageURLUser,
            article_imgpath: article_imgpath,
            article_title: article_title,
            article_txt: article_txt,
            likes: likes,
            article_views: article_views,
            date: date);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
