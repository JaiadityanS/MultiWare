import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'agri_connect_6063d_record.g.dart';

abstract class AgriConnect6063dRecord
    implements Built<AgriConnect6063dRecord, AgriConnect6063dRecordBuilder> {
  static Serializer<AgriConnect6063dRecord> get serializer =>
      _$agriConnect6063dRecordSerializer;

  String? get email;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  String? get uid;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  @BuiltValueField(wireName: 'edited_time')
  DateTime? get editedTime;

  String? get bio;

  @BuiltValueField(wireName: 'user_name')
  String? get userName;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AgriConnect6063dRecordBuilder builder) =>
      builder
        ..email = ''
        ..displayName = ''
        ..photoUrl = ''
        ..uid = ''
        ..phoneNumber = ''
        ..bio = ''
        ..userName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('agri-connect-6063d');

  static Stream<AgriConnect6063dRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AgriConnect6063dRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AgriConnect6063dRecord._();
  factory AgriConnect6063dRecord(
          [void Function(AgriConnect6063dRecordBuilder) updates]) =
      _$AgriConnect6063dRecord;

  static AgriConnect6063dRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAgriConnect6063dRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  DateTime? editedTime,
  String? bio,
  String? userName,
}) {
  final firestoreData = serializers.toFirestore(
    AgriConnect6063dRecord.serializer,
    AgriConnect6063dRecord(
      (a) => a
        ..email = email
        ..displayName = displayName
        ..photoUrl = photoUrl
        ..uid = uid
        ..createdTime = createdTime
        ..phoneNumber = phoneNumber
        ..editedTime = editedTime
        ..bio = bio
        ..userName = userName,
    ),
  );

  return firestoreData;
}
