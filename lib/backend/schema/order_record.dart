import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'order_record.g.dart';

abstract class OrderRecord implements Built<OrderRecord, OrderRecordBuilder> {
  static Serializer<OrderRecord> get serializer => _$orderRecordSerializer;

  String? get name;

  double? get amount;

  String? get status;

  double? get tax;

  @BuiltValueField(wireName: 'created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: 'vendor_name')
  String? get vendorName;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(OrderRecordBuilder builder) => builder
    ..name = ''
    ..amount = 0.0
    ..status = ''
    ..tax = 0.0
    ..vendorName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Order');

  static Stream<OrderRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<OrderRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  OrderRecord._();
  factory OrderRecord([void Function(OrderRecordBuilder) updates]) =
      _$OrderRecord;

  static OrderRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createOrderRecordData({
  String? name,
  double? amount,
  String? status,
  double? tax,
  DateTime? createdAt,
  String? vendorName,
}) {
  final firestoreData = serializers.toFirestore(
    OrderRecord.serializer,
    OrderRecord(
      (o) => o
        ..name = name
        ..amount = amount
        ..status = status
        ..tax = tax
        ..createdAt = createdAt
        ..vendorName = vendorName,
    ),
  );

  return firestoreData;
}
