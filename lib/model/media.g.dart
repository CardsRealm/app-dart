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
      'imageURL',
      serializers.serialize(object.imageURL,
          specifiedType: const FullType(String)),
      'mediaURL',
      serializers.serialize(object.mediaURL,
          specifiedType: const FullType(String)),
      'texto',
      serializers.serialize(object.texto,
          specifiedType: const FullType(String)),
      'mediaDate',
      serializers.serialize(object.mediaDate,
          specifiedType: const FullType(DateTime)),
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
        case 'imageURL':
          result.imageURL = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'mediaURL':
          result.mediaURL = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'texto':
          result.texto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'mediaDate':
          result.mediaDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
      }
    }

    return result.build();
  }
}

class _$Media extends Media {
  @override
  final String imageURL;
  @override
  final String mediaURL;
  @override
  final String texto;
  @override
  final DateTime mediaDate;

  factory _$Media([void Function(MediaBuilder) updates]) =>
      (new MediaBuilder()..update(updates)).build();

  _$Media._({this.imageURL, this.mediaURL, this.texto, this.mediaDate})
      : super._() {
    if (imageURL == null) {
      throw new BuiltValueNullFieldError('Media', 'imageURL');
    }
    if (mediaURL == null) {
      throw new BuiltValueNullFieldError('Media', 'mediaURL');
    }
    if (texto == null) {
      throw new BuiltValueNullFieldError('Media', 'texto');
    }
    if (mediaDate == null) {
      throw new BuiltValueNullFieldError('Media', 'mediaDate');
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
        imageURL == other.imageURL &&
        mediaURL == other.mediaURL &&
        texto == other.texto &&
        mediaDate == other.mediaDate;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, imageURL.hashCode), mediaURL.hashCode), texto.hashCode),
        mediaDate.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Media')
          ..add('imageURL', imageURL)
          ..add('mediaURL', mediaURL)
          ..add('texto', texto)
          ..add('mediaDate', mediaDate))
        .toString();
  }
}

class MediaBuilder implements Builder<Media, MediaBuilder> {
  _$Media _$v;

  String _imageURL;
  String get imageURL => _$this._imageURL;
  set imageURL(String imageURL) => _$this._imageURL = imageURL;

  String _mediaURL;
  String get mediaURL => _$this._mediaURL;
  set mediaURL(String mediaURL) => _$this._mediaURL = mediaURL;

  String _texto;
  String get texto => _$this._texto;
  set texto(String texto) => _$this._texto = texto;

  DateTime _mediaDate;
  DateTime get mediaDate => _$this._mediaDate;
  set mediaDate(DateTime mediaDate) => _$this._mediaDate = mediaDate;

  MediaBuilder();

  MediaBuilder get _$this {
    if (_$v != null) {
      _imageURL = _$v.imageURL;
      _mediaURL = _$v.mediaURL;
      _texto = _$v.texto;
      _mediaDate = _$v.mediaDate;
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
            imageURL: imageURL,
            mediaURL: mediaURL,
            texto: texto,
            mediaDate: mediaDate);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
