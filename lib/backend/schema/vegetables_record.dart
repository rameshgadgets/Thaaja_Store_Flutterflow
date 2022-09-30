import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'vegetables_record.g.dart';

abstract class VegetablesRecord
    implements Built<VegetablesRecord, VegetablesRecordBuilder> {
  static Serializer<VegetablesRecord> get serializer =>
      _$vegetablesRecordSerializer;

  String? get name;

  String? get type;

  double? get amount;

  String? get image;

  int? get minCount;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(VegetablesRecordBuilder builder) => builder
    ..name = ''
    ..type = ''
    ..amount = 0.0
    ..image = ''
    ..minCount = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Vegetables');

  static Stream<VegetablesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<VegetablesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  VegetablesRecord._();
  factory VegetablesRecord([void Function(VegetablesRecordBuilder) updates]) =
      _$VegetablesRecord;

  static VegetablesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createVegetablesRecordData({
  String? name,
  String? type,
  double? amount,
  String? image,
  int? minCount,
}) {
  final firestoreData = serializers.toFirestore(
    VegetablesRecord.serializer,
    VegetablesRecord(
      (v) => v
        ..name = name
        ..type = type
        ..amount = amount
        ..image = image
        ..minCount = minCount,
    ),
  );

  return firestoreData;
}
