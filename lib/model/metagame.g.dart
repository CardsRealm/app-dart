// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metagame.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Metagame> _$metagameSerializer = new _$MetagameSerializer();

class _$MetagameSerializer implements StructuredSerializer<Metagame> {
  @override
  final Iterable<Type> types = const [Metagame, _$Metagame];
  @override
  final String wireName = 'Metagame';

  @override
  Iterable<Object> serialize(Serializers serializers, Metagame object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'decks_meta_crop_image',
      serializers.serialize(object.decks_meta_crop_image,
          specifiedType: const FullType(String)),
      'decks_meta_name',
      serializers.serialize(object.decks_meta_name,
          specifiedType: const FullType(String)),
      'percentagem',
      serializers.serialize(object.percentagem,
          specifiedType: const FullType(int)),
      'decks_meta_price_real',
      serializers.serialize(object.decks_meta_price_real,
          specifiedType: const FullType(int)),
      'deck_path',
      serializers.serialize(object.deck_path,
          specifiedType: const FullType(String)),
      'decks_meta_path',
      serializers.serialize(object.decks_meta_path,
          specifiedType: const FullType(String)),
      'decks_meta_format',
      serializers.serialize(object.decks_meta_format,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  Metagame deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MetagameBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'decks_meta_crop_image':
          result.decks_meta_crop_image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'decks_meta_name':
          result.decks_meta_name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'percentagem':
          result.percentagem = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'decks_meta_price_real':
          result.decks_meta_price_real = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'deck_path':
          result.deck_path = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'decks_meta_path':
          result.decks_meta_path = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'decks_meta_format':
          result.decks_meta_format = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Metagame extends Metagame {
  @override
  final String decks_meta_crop_image;
  @override
  final String decks_meta_name;
  @override
  final int percentagem;
  @override
  final int decks_meta_price_real;
  @override
  final String deck_path;
  @override
  final String decks_meta_path;
  @override
  final int decks_meta_format;

  factory _$Metagame([void Function(MetagameBuilder) updates]) =>
      (new MetagameBuilder()..update(updates)).build();

  _$Metagame._(
      {this.decks_meta_crop_image,
      this.decks_meta_name,
      this.percentagem,
      this.decks_meta_price_real,
      this.deck_path,
      this.decks_meta_path,
      this.decks_meta_format})
      : super._() {
    if (decks_meta_crop_image == null) {
      throw new BuiltValueNullFieldError('Metagame', 'decks_meta_crop_image');
    }
    if (decks_meta_name == null) {
      throw new BuiltValueNullFieldError('Metagame', 'decks_meta_name');
    }
    if (percentagem == null) {
      throw new BuiltValueNullFieldError('Metagame', 'percentagem');
    }
    if (decks_meta_price_real == null) {
      throw new BuiltValueNullFieldError('Metagame', 'decks_meta_price_real');
    }
    if (deck_path == null) {
      throw new BuiltValueNullFieldError('Metagame', 'deck_path');
    }
    if (decks_meta_path == null) {
      throw new BuiltValueNullFieldError('Metagame', 'decks_meta_path');
    }
    if (decks_meta_format == null) {
      throw new BuiltValueNullFieldError('Metagame', 'decks_meta_format');
    }
  }

  @override
  Metagame rebuild(void Function(MetagameBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MetagameBuilder toBuilder() => new MetagameBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Metagame &&
        decks_meta_crop_image == other.decks_meta_crop_image &&
        decks_meta_name == other.decks_meta_name &&
        percentagem == other.percentagem &&
        decks_meta_price_real == other.decks_meta_price_real &&
        deck_path == other.deck_path &&
        decks_meta_path == other.decks_meta_path &&
        decks_meta_format == other.decks_meta_format;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc(0, decks_meta_crop_image.hashCode),
                            decks_meta_name.hashCode),
                        percentagem.hashCode),
                    decks_meta_price_real.hashCode),
                deck_path.hashCode),
            decks_meta_path.hashCode),
        decks_meta_format.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Metagame')
          ..add('decks_meta_crop_image', decks_meta_crop_image)
          ..add('decks_meta_name', decks_meta_name)
          ..add('percentagem', percentagem)
          ..add('decks_meta_price_real', decks_meta_price_real)
          ..add('deck_path', deck_path)
          ..add('decks_meta_path', decks_meta_path)
          ..add('decks_meta_format', decks_meta_format))
        .toString();
  }
}

class MetagameBuilder implements Builder<Metagame, MetagameBuilder> {
  _$Metagame _$v;

  String _decks_meta_crop_image;
  String get decks_meta_crop_image => _$this._decks_meta_crop_image;
  set decks_meta_crop_image(String decks_meta_crop_image) =>
      _$this._decks_meta_crop_image = decks_meta_crop_image;

  String _decks_meta_name;
  String get decks_meta_name => _$this._decks_meta_name;
  set decks_meta_name(String decks_meta_name) =>
      _$this._decks_meta_name = decks_meta_name;

  int _percentagem;
  int get percentagem => _$this._percentagem;
  set percentagem(int percentagem) => _$this._percentagem = percentagem;

  int _decks_meta_price_real;
  int get decks_meta_price_real => _$this._decks_meta_price_real;
  set decks_meta_price_real(int decks_meta_price_real) =>
      _$this._decks_meta_price_real = decks_meta_price_real;

  String _deck_path;
  String get deck_path => _$this._deck_path;
  set deck_path(String deck_path) => _$this._deck_path = deck_path;

  String _decks_meta_path;
  String get decks_meta_path => _$this._decks_meta_path;
  set decks_meta_path(String decks_meta_path) =>
      _$this._decks_meta_path = decks_meta_path;

  int _decks_meta_format;
  int get decks_meta_format => _$this._decks_meta_format;
  set decks_meta_format(int decks_meta_format) =>
      _$this._decks_meta_format = decks_meta_format;

  MetagameBuilder();

  MetagameBuilder get _$this {
    if (_$v != null) {
      _decks_meta_crop_image = _$v.decks_meta_crop_image;
      _decks_meta_name = _$v.decks_meta_name;
      _percentagem = _$v.percentagem;
      _decks_meta_price_real = _$v.decks_meta_price_real;
      _deck_path = _$v.deck_path;
      _decks_meta_path = _$v.decks_meta_path;
      _decks_meta_format = _$v.decks_meta_format;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Metagame other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Metagame;
  }

  @override
  void update(void Function(MetagameBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Metagame build() {
    final _$result = _$v ??
        new _$Metagame._(
            decks_meta_crop_image: decks_meta_crop_image,
            decks_meta_name: decks_meta_name,
            percentagem: percentagem,
            decks_meta_price_real: decks_meta_price_real,
            deck_path: deck_path,
            decks_meta_path: decks_meta_path,
            decks_meta_format: decks_meta_format);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
