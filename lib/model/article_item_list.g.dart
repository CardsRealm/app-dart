// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_item_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ArticleItemList> _$articleItemListSerializer =
    new _$ArticleItemListSerializer();

class _$ArticleItemListSerializer
    implements StructuredSerializer<ArticleItemList> {
  @override
  final Iterable<Type> types = const [ArticleItemList, _$ArticleItemList];
  @override
  final String wireName = 'ArticleItemList';

  @override
  Iterable<Object> serialize(Serializers serializers, ArticleItemList object,
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
      'article_path',
      serializers.serialize(object.article_path,
          specifiedType: const FullType(String)),
      'article_title',
      serializers.serialize(object.article_title,
          specifiedType: const FullType(String)),
      'article_description',
      serializers.serialize(object.article_description,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ArticleItemList deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ArticleItemListBuilder();

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
        case 'article_path':
          result.article_path = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'article_title':
          result.article_title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'article_description':
          result.article_description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ArticleItemList extends ArticleItemList {
  @override
  final String nickname;
  @override
  final String imageURLUser;
  @override
  final String article_imgpath;
  @override
  final String article_path;
  @override
  final String article_title;
  @override
  final String article_description;

  factory _$ArticleItemList([void Function(ArticleItemListBuilder) updates]) =>
      (new ArticleItemListBuilder()..update(updates)).build();

  _$ArticleItemList._(
      {this.nickname,
      this.imageURLUser,
      this.article_imgpath,
      this.article_path,
      this.article_title,
      this.article_description})
      : super._() {
    if (nickname == null) {
      throw new BuiltValueNullFieldError('ArticleItemList', 'nickname');
    }
    if (imageURLUser == null) {
      throw new BuiltValueNullFieldError('ArticleItemList', 'imageURLUser');
    }
    if (article_imgpath == null) {
      throw new BuiltValueNullFieldError('ArticleItemList', 'article_imgpath');
    }
    if (article_path == null) {
      throw new BuiltValueNullFieldError('ArticleItemList', 'article_path');
    }
    if (article_title == null) {
      throw new BuiltValueNullFieldError('ArticleItemList', 'article_title');
    }
    if (article_description == null) {
      throw new BuiltValueNullFieldError(
          'ArticleItemList', 'article_description');
    }
  }

  @override
  ArticleItemList rebuild(void Function(ArticleItemListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ArticleItemListBuilder toBuilder() =>
      new ArticleItemListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ArticleItemList &&
        nickname == other.nickname &&
        imageURLUser == other.imageURLUser &&
        article_imgpath == other.article_imgpath &&
        article_path == other.article_path &&
        article_title == other.article_title &&
        article_description == other.article_description;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, nickname.hashCode), imageURLUser.hashCode),
                    article_imgpath.hashCode),
                article_path.hashCode),
            article_title.hashCode),
        article_description.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ArticleItemList')
          ..add('nickname', nickname)
          ..add('imageURLUser', imageURLUser)
          ..add('article_imgpath', article_imgpath)
          ..add('article_path', article_path)
          ..add('article_title', article_title)
          ..add('article_description', article_description))
        .toString();
  }
}

class ArticleItemListBuilder
    implements Builder<ArticleItemList, ArticleItemListBuilder> {
  _$ArticleItemList _$v;

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

  String _article_path;
  String get article_path => _$this._article_path;
  set article_path(String article_path) => _$this._article_path = article_path;

  String _article_title;
  String get article_title => _$this._article_title;
  set article_title(String article_title) =>
      _$this._article_title = article_title;

  String _article_description;
  String get article_description => _$this._article_description;
  set article_description(String article_description) =>
      _$this._article_description = article_description;

  ArticleItemListBuilder();

  ArticleItemListBuilder get _$this {
    if (_$v != null) {
      _nickname = _$v.nickname;
      _imageURLUser = _$v.imageURLUser;
      _article_imgpath = _$v.article_imgpath;
      _article_path = _$v.article_path;
      _article_title = _$v.article_title;
      _article_description = _$v.article_description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ArticleItemList other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ArticleItemList;
  }

  @override
  void update(void Function(ArticleItemListBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ArticleItemList build() {
    final _$result = _$v ??
        new _$ArticleItemList._(
            nickname: nickname,
            imageURLUser: imageURLUser,
            article_imgpath: article_imgpath,
            article_path: article_path,
            article_title: article_title,
            article_description: article_description);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
