// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vegetables_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<VegetablesRecord> _$vegetablesRecordSerializer =
    new _$VegetablesRecordSerializer();

class _$VegetablesRecordSerializer
    implements StructuredSerializer<VegetablesRecord> {
  @override
  final Iterable<Type> types = const [VegetablesRecord, _$VegetablesRecord];
  @override
  final String wireName = 'VegetablesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, VegetablesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.amount;
    if (value != null) {
      result
        ..add('amount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.minCount;
    if (value != null) {
      result
        ..add('minCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  VegetablesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VegetablesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'minCount':
          result.minCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$VegetablesRecord extends VegetablesRecord {
  @override
  final String? name;
  @override
  final String? type;
  @override
  final double? amount;
  @override
  final String? image;
  @override
  final int? minCount;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$VegetablesRecord(
          [void Function(VegetablesRecordBuilder)? updates]) =>
      (new VegetablesRecordBuilder()..update(updates))._build();

  _$VegetablesRecord._(
      {this.name,
      this.type,
      this.amount,
      this.image,
      this.minCount,
      this.ffRef})
      : super._();

  @override
  VegetablesRecord rebuild(void Function(VegetablesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VegetablesRecordBuilder toBuilder() =>
      new VegetablesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VegetablesRecord &&
        name == other.name &&
        type == other.type &&
        amount == other.amount &&
        image == other.image &&
        minCount == other.minCount &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, name.hashCode), type.hashCode), amount.hashCode),
                image.hashCode),
            minCount.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VegetablesRecord')
          ..add('name', name)
          ..add('type', type)
          ..add('amount', amount)
          ..add('image', image)
          ..add('minCount', minCount)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class VegetablesRecordBuilder
    implements Builder<VegetablesRecord, VegetablesRecordBuilder> {
  _$VegetablesRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  double? _amount;
  double? get amount => _$this._amount;
  set amount(double? amount) => _$this._amount = amount;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  int? _minCount;
  int? get minCount => _$this._minCount;
  set minCount(int? minCount) => _$this._minCount = minCount;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  VegetablesRecordBuilder() {
    VegetablesRecord._initializeBuilder(this);
  }

  VegetablesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _type = $v.type;
      _amount = $v.amount;
      _image = $v.image;
      _minCount = $v.minCount;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VegetablesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VegetablesRecord;
  }

  @override
  void update(void Function(VegetablesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VegetablesRecord build() => _build();

  _$VegetablesRecord _build() {
    final _$result = _$v ??
        new _$VegetablesRecord._(
            name: name,
            type: type,
            amount: amount,
            image: image,
            minCount: minCount,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
