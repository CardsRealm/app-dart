// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Media> _$mediaSerializer = new _$MediaSerializer();

class _$MediaSerializer implements StructuredSerializer<Media> {
  @override
  final Iterable<Type> types = const [Media, _$Media];
  @override
  final String wireName = 'Media';

  @override
  Iterable<Object> serialize(Serializers serializers, Media object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'media_link_image',
      serializers.serialize(object.media_link_image,
          specifiedType: const FullType(String)),
      'media_link_link',
      serializers.serialize(object.media_link_link,
          specifiedType: const FullType(String)),
      'media_link_text',
      serializers.serialize(object.media_link_text,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Media deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MediaBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'media_link_image':
          result.media_link_image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'media_link_link':
          result.media_link_link = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'media_link_text':
          result.media_link_text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Media extends Media {
  @override
  final String media_link_image;
  @override
  final String media_link_link;
  @override
  final String media_link_text;

  factory _$Media([void Function(MediaBuilder) updates]) =>
      (new MediaBuilder()..update(updates)).build();

  _$Media._({this.media_link_image, this.media_link_link, this.media_link_text})
      : super._() {
    if (media_link_image == null) {
      throw new BuiltValueNullFieldError('Media', 'media_link_image');
    }
    if (media_link_link == null) {
      throw new BuiltValueNullFieldError('Media', 'media_link_link');
    }
    if (media_link_text == null) {
      throw new BuiltValueNullFieldError('Media', 'media_link_text');
    }
  }

  @override
  Media rebuild(void Function(MediaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MediaBuilder toBuilder() => new MediaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Media &&
        media_link_image == other.media_link_image &&
        media_link_link == other.media_link_link &&
        media_link_text == other.media_link_text;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, media_link_image.hashCode), media_link_link.hashCode),
        media_link_text.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Media')
          ..add('media_link_image', media_link_image)
          ..add('media_link_link', media_link_link)
          ..add('media_link_text', media_link_text))
        .toString();
  }
}

class MediaBuilder implements Builder<Media, MediaBuilder> {
  _$Media _$v;

  String _media_link_image;
  String get media_link_image => _$this._media_link_image;
  set media_link_image(String media_link_image) =>
      _$this._media_link_image = media_link_image;

  String _media_link_link;
  String get media_link_link => _$this._media_link_link;
  set media_link_link(String media_link_link) =>
      _$this._media_link_link = media_link_link;

  String _media_link_text;
  String get media_link_text => _$this._media_link_text;
  set media_link_text(String media_link_text) =>
      _$this._media_link_text = media_link_text;

  MediaBuilder();

  MediaBuilder get _$this {
    if (_$v != null) {
      _media_link_image = _$v.media_link_image;
      _media_link_link = _$v.media_link_link;
      _media_link_text = _$v.media_link_text;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Media other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Media;
  }

  @override
  void update(void Function(MediaBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Media build() {
    final _$result = _$v ??
        new _$Media._(
            media_link_image: media_link_image,
            media_link_link: media_link_link,
            media_link_text: media_link_text);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
