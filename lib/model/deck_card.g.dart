// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deck_card.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DeckCard> _$deckCardSerializer = new _$DeckCardSerializer();

class _$DeckCardSerializer implements StructuredSerializer<DeckCard> {
  @override
  final Iterable<Type> types = const [DeckCard, _$DeckCard];
  @override
  final String wireName = 'DeckCard';

  @override
  Iterable<Object> serialize(Serializers serializers, DeckCard object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'deckId',
      serializers.serialize(object.deckId, specifiedType: const FullType(int)),
      'deckTitle',
      serializers.serialize(object.deckTitle,
          specifiedType: const FullType(String)),
      'namePortuguese',
      serializers.serialize(object.namePortuguese,
          specifiedType: const FullType(String)),
      'deckQuantity',
      serializers.serialize(object.deckQuantity,
          specifiedType: const FullType(int)),
      'costCardKingdom',
      serializers.serialize(object.costCardKingdom,
          specifiedType: const FullType(double)),
      'costCardHoarder',
      serializers.serialize(object.costCardHoarder,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  DeckCard deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DeckCardBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'deckId':
          result.deckId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'deckTitle':
          result.deckTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'namePortuguese':
          result.namePortuguese = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'deckQuantity':
          result.deckQuantity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'costCardKingdom':
          result.costCardKingdom = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'costCardHoarder':
          result.costCardHoarder = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$DeckCard extends DeckCard {
  @override
  final int deckId;
  @override
  final String deckTitle;
  @override
  final String namePortuguese;
  @override
  final int deckQuantity;
  @override
  final double costCardKingdom;
  @override
  final double costCardHoarder;

  factory _$DeckCard([void Function(DeckCardBuilder) updates]) =>
      (new DeckCardBuilder()..update(updates)).build();

  _$DeckCard._(
      {this.deckId,
      this.deckTitle,
      this.namePortuguese,
      this.deckQuantity,
      this.costCardKingdom,
      this.costCardHoarder})
      : super._() {
    if (deckId == null) {
      throw new BuiltValueNullFieldError('DeckCard', 'deckId');
    }
    if (deckTitle == null) {
      throw new BuiltValueNullFieldError('DeckCard', 'deckTitle');
    }
    if (namePortuguese == null) {
      throw new BuiltValueNullFieldError('DeckCard', 'namePortuguese');
    }
    if (deckQuantity == null) {
      throw new BuiltValueNullFieldError('DeckCard', 'deckQuantity');
    }
    if (costCardKingdom == null) {
      throw new BuiltValueNullFieldError('DeckCard', 'costCardKingdom');
    }
    if (costCardHoarder == null) {
      throw new BuiltValueNullFieldError('DeckCard', 'costCardHoarder');
    }
  }

  @override
  DeckCard rebuild(void Function(DeckCardBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeckCardBuilder toBuilder() => new DeckCardBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeckCard &&
        deckId == other.deckId &&
        deckTitle == other.deckTitle &&
        namePortuguese == other.namePortuguese &&
        deckQuantity == other.deckQuantity &&
        costCardKingdom == other.costCardKingdom &&
        costCardHoarder == other.costCardHoarder;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, deckId.hashCode), deckTitle.hashCode),
                    namePortuguese.hashCode),
                deckQuantity.hashCode),
            costCardKingdom.hashCode),
        costCardHoarder.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DeckCard')
          ..add('deckId', deckId)
          ..add('deckTitle', deckTitle)
          ..add('namePortuguese', namePortuguese)
          ..add('deckQuantity', deckQuantity)
          ..add('costCardKingdom', costCardKingdom)
          ..add('costCardHoarder', costCardHoarder))
        .toString();
  }
}

class DeckCardBuilder implements Builder<DeckCard, DeckCardBuilder> {
  _$DeckCard _$v;

  int _deckId;
  int get deckId => _$this._deckId;
  set deckId(int deckId) => _$this._deckId = deckId;

  String _deckTitle;
  String get deckTitle => _$this._deckTitle;
  set deckTitle(String deckTitle) => _$this._deckTitle = deckTitle;

  String _namePortuguese;
  String get namePortuguese => _$this._namePortuguese;
  set namePortuguese(String namePortuguese) =>
      _$this._namePortuguese = namePortuguese;

  int _deckQuantity;
  int get deckQuantity => _$this._deckQuantity;
  set deckQuantity(int deckQuantity) => _$this._deckQuantity = deckQuantity;

  double _costCardKingdom;
  double get costCardKingdom => _$this._costCardKingdom;
  set costCardKingdom(double costCardKingdom) =>
      _$this._costCardKingdom = costCardKingdom;

  double _costCardHoarder;
  double get costCardHoarder => _$this._costCardHoarder;
  set costCardHoarder(double costCardHoarder) =>
      _$this._costCardHoarder = costCardHoarder;

  DeckCardBuilder();

  DeckCardBuilder get _$this {
    if (_$v != null) {
      _deckId = _$v.deckId;
      _deckTitle = _$v.deckTitle;
      _namePortuguese = _$v.namePortuguese;
      _deckQuantity = _$v.deckQuantity;
      _costCardKingdom = _$v.costCardKingdom;
      _costCardHoarder = _$v.costCardHoarder;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeckCard other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DeckCard;
  }

  @override
  void update(void Function(DeckCardBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DeckCard build() {
    final _$result = _$v ??
        new _$DeckCard._(
            deckId: deckId,
            deckTitle: deckTitle,
            namePortuguese: namePortuguese,
            deckQuantity: deckQuantity,
            costCardKingdom: costCardKingdom,
            costCardHoarder: costCardHoarder);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
