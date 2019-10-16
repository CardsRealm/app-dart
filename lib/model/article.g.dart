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
      'nickName',
      serializers.serialize(object.nickName,
          specifiedType: const FullType(String)),
      'userImage',
      serializers.serialize(object.userImage,
          specifiedType: const FullType(String)),
      'imgPath',
      serializers.serialize(object.imgPath,
          specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'texto',
      serializers.serialize(object.texto,
          specifiedType: const FullType(String)),
      'likes',
      serializers.serialize(object.likes, specifiedType: const FullType(int)),
      'views',
      serializers.serialize(object.views, specifiedType: const FullType(int)),
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
        case 'nickName':
          result.nickName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'userImage':
          result.userImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'imgPath':
          result.imgPath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'texto':
          result.texto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'likes':
          result.likes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'views':
          result.views = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Article extends Article {
  @override
  final String nickName;
  @override
  final String userImage;
  @override
  final String imgPath;
  @override
  final String title;
  @override
  final String texto;
  @override
  final int likes;
  @override
  final int views;

  factory _$Article([void Function(ArticleBuilder) updates]) =>
      (new ArticleBuilder()..update(updates)).build();

  _$Article._(
      {this.nickName,
      this.userImage,
      this.imgPath,
      this.title,
      this.texto,
      this.likes,
      this.views})
      : super._() {
    if (nickName == null) {
      throw new BuiltValueNullFieldError('Article', 'nickName');
    }
    if (userImage == null) {
      throw new BuiltValueNullFieldError('Article', 'userImage');
    }
    if (imgPath == null) {
      throw new BuiltValueNullFieldError('Article', 'imgPath');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('Article', 'title');
    }
    if (texto == null) {
      throw new BuiltValueNullFieldError('Article', 'texto');
    }
    if (likes == null) {
      throw new BuiltValueNullFieldError('Article', 'likes');
    }
    if (views == null) {
      throw new BuiltValueNullFieldError('Article', 'views');
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
        nickName == other.nickName &&
        userImage == other.userImage &&
        imgPath == other.imgPath &&
        title == other.title &&
        texto == other.texto &&
        likes == other.likes &&
        views == other.views;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, nickName.hashCode), userImage.hashCode),
                        imgPath.hashCode),
                    title.hashCode),
                texto.hashCode),
            likes.hashCode),
        views.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Article')
          ..add('nickName', nickName)
          ..add('userImage', userImage)
          ..add('imgPath', imgPath)
          ..add('title', title)
          ..add('texto', texto)
          ..add('likes', likes)
          ..add('views', views))
        .toString();
  }
}

class ArticleBuilder implements Builder<Article, ArticleBuilder> {
  _$Article _$v;

  String _nickName;
  String get nickName => _$this._nickName;
  set nickName(String nickName) => _$this._nickName = nickName;

  String _userImage;
  String get userImage => _$this._userImage;
  set userImage(String userImage) => _$this._userImage = userImage;

  String _imgPath;
  String get imgPath => _$this._imgPath;
  set imgPath(String imgPath) => _$this._imgPath = imgPath;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _texto;
  String get texto => _$this._texto;
  set texto(String texto) => _$this._texto = texto;

  int _likes;
  int get likes => _$this._likes;
  set likes(int likes) => _$this._likes = likes;

  int _views;
  int get views => _$this._views;
  set views(int views) => _$this._views = views;

  ArticleBuilder();

  ArticleBuilder get _$this {
    if (_$v != null) {
      _nickName = _$v.nickName;
      _userImage = _$v.userImage;
      _imgPath = _$v.imgPath;
      _title = _$v.title;
      _texto = _$v.texto;
      _likes = _$v.likes;
      _views = _$v.views;
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
            nickName: nickName,
            userImage: userImage,
            imgPath: imgPath,
            title: title,
            texto: texto,
            likes: likes,
            views: views);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
