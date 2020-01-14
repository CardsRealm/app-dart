// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Card> _$cardSerializer = new _$CardSerializer();

class _$CardSerializer implements StructuredSerializer<Card> {
  @override
  final Iterable<Type> types = const [Card, _$Card];
  @override
  final String wireName = 'Card';

  @override
  Iterable<Object> serialize(Serializers serializers, Card object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'deck_id',
      serializers.serialize(object.deck_id, specifiedType: const FullType(int)),
      'deck_title',
      serializers.serialize(object.deck_title,
          specifiedType: const FullType(String)),
      'deck_path',
      serializers.serialize(object.deck_path,
          specifiedType: const FullType(String)),
      'name_por',
      serializers.serialize(object.name_por,
          specifiedType: const FullType(String)),
      'deck_quantity',
      serializers.serialize(object.deck_quantity,
          specifiedType: const FullType(int)),
      'set_image',
      serializers.serialize(object.set_image,
          specifiedType: const FullType(String)),
      'price_cardkingdom',
      serializers.serialize(object.price_cardkingdom,
          specifiedType: const FullType(double)),
      'price_cardhoarder',
      serializers.serialize(object.price_cardhoarder,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  Card deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CardBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'deck_id':
          result.deck_id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'deck_title':
          result.deck_title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'deck_path':
          result.deck_path = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name_por':
          result.name_por = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'deck_quantity':
          result.deck_quantity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'set_image':
          result.set_image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'price_cardkingdom':
          result.price_cardkingdom = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'price_cardhoarder':
          result.price_cardhoarder = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$Card extends Card {
  @override
  final int deck_id;
  @override
  final String deck_title;
  @override
  final String deck_path;
  @override
  final String name_por;
  @override
  final int deck_quantity;
  @override
  final String set_image;
  @override
  final double price_cardkingdom;
  @override
  final double price_cardhoarder;

  factory _$Card([void Function(CardBuilder) updates]) =>
      (new CardBuilder()..update(updates)).build();

  _$Card._(
      {this.deck_id,
      this.deck_title,
      this.deck_path,
      this.name_por,
      this.deck_quantity,
      this.set_image,
      this.price_cardkingdom,
      this.price_cardhoarder})
      : super._() {
    if (deck_id == null) {
      throw new BuiltValueNullFieldError('Card', 'deck_id');
    }
    if (deck_title == null) {
      throw new BuiltValueNullFieldError('Card', 'deck_title');
    }
    if (deck_path == null) {
      throw new BuiltValueNullFieldError('Card', 'deck_path');
    }
    if (name_por == null) {
      throw new BuiltValueNullFieldError('Card', 'name_por');
    }
    if (deck_quantity == null) {
      throw new BuiltValueNullFieldError('Card', 'deck_quantity');
    }
    if (set_image == null) {
      throw new BuiltValueNullFieldError('Card', 'set_image');
    }
    if (price_cardkingdom == null) {
      throw new BuiltValueNullFieldError('Card', 'price_cardkingdom');
    }
    if (price_cardhoarder == null) {
      throw new BuiltValueNullFieldError('Card', 'price_cardhoarder');
    }
  }

  @override
  Card rebuild(void Function(CardBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CardBuilder toBuilder() => new CardBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Card &&
        deck_id == other.deck_id &&
        deck_title == other.deck_title &&
        deck_path == other.deck_path &&
        name_por == other.name_por &&
        deck_quantity == other.deck_quantity &&
        set_image == other.set_image &&
        price_cardkingdom == other.price_cardkingdom &&
        price_cardhoarder == other.price_cardhoarder;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, deck_id.hashCode), deck_title.hashCode),
                            deck_path.hashCode),
                        name_por.hashCode),
                    deck_quantity.hashCode),
                set_image.hashCode),
            price_cardkingdom.hashCode),
        price_cardhoarder.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Card')
          ..add('deck_id', deck_id)
          ..add('deck_title', deck_title)
          ..add('deck_path', deck_path)
          ..add('name_por', name_por)
          ..add('deck_quantity', deck_quantity)
          ..add('set_image', set_image)
          ..add('price_cardkingdom', price_cardkingdom)
          ..add('price_cardhoarder', price_cardhoarder))
        .toString();
  }
}

class CardBuilder implements Builder<Card, CardBuilder> {
  _$Card _$v;

  int _deck_id;
  int get deck_id => _$this._deck_id;
  set deck_id(int deck_id) => _$this._deck_id = deck_id;

  String _deck_title;
  String get deck_title => _$this._deck_title;
  set deck_title(String deck_title) => _$this._deck_title = deck_title;

  String _deck_path;
  String get deck_path => _$this._deck_path;
  set deck_path(String deck_path) => _$this._deck_path = deck_path;

  String _name_por;
  String get name_por => _$this._name_por;
  set name_por(String name_por) => _$this._name_por = name_por;

  int _deck_quantity;
  int get deck_quantity => _$this._deck_quantity;
  set deck_quantity(int deck_quantity) => _$this._deck_quantity = deck_quantity;

  String _set_image;
  String get set_image => _$this._set_image;
  set set_image(String set_image) => _$this._set_image = set_image;

  double _price_cardkingdom;
  double get price_cardkingdom => _$this._price_cardkingdom;
  set price_cardkingdom(double price_cardkingdom) =>
      _$this._price_cardkingdom = price_cardkingdom;

  double _price_cardhoarder;
  double get price_cardhoarder => _$this._price_cardhoarder;
  set price_cardhoarder(double price_cardhoarder) =>
      _$this._price_cardhoarder = price_cardhoarder;

  CardBuilder();

  CardBuilder get _$this {
    if (_$v != null) {
      _deck_id = _$v.deck_id;
      _deck_title = _$v.deck_title;
      _deck_path = _$v.deck_path;
      _name_por = _$v.name_por;
      _deck_quantity = _$v.deck_quantity;
      _set_image = _$v.set_image;
      _price_cardkingdom = _$v.price_cardkingdom;
      _price_cardhoarder = _$v.price_cardhoarder;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Card other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Card;
  }

  @override
  void update(void Function(CardBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Card build() {
    final _$result = _$v ??
        new _$Card._(
            deck_id: deck_id,
            deck_title: deck_title,
            deck_path: deck_path,
            name_por: name_por,
            deck_quantity: deck_quantity,
            set_image: set_image,
            price_cardkingdom: price_cardkingdom,
            price_cardhoarder: price_cardhoarder);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
