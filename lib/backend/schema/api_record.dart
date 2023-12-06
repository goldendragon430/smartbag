import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'api_record.g.dart';

abstract class ApiRecord implements Built<ApiRecord, ApiRecordBuilder> {
  static Serializer<ApiRecord> get serializer => _$apiRecordSerializer;

  String? get apiKey;

  String? get secretKey;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(ApiRecordBuilder builder) => builder
    ..apiKey = ''
    ..secretKey = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('api')
          : FirebaseFirestore.instance.collectionGroup('api');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('api').doc();

  static Stream<ApiRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ApiRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ApiRecord._();
  factory ApiRecord([void Function(ApiRecordBuilder) updates]) = _$ApiRecord;

  static ApiRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createApiRecordData({
  String? apiKey,
  String? secretKey,
}) {
  final firestoreData = serializers.toFirestore(
    ApiRecord.serializer,
    ApiRecord(
      (a) => a
        ..apiKey = apiKey
        ..secretKey = secretKey,
    ),
  );

  return firestoreData;
}
