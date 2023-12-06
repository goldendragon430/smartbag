// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ApiRecord> _$apiRecordSerializer = new _$ApiRecordSerializer();

class _$ApiRecordSerializer implements StructuredSerializer<ApiRecord> {
  @override
  final Iterable<Type> types = const [ApiRecord, _$ApiRecord];
  @override
  final String wireName = 'ApiRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ApiRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.apiKey;
    if (value != null) {
      result
        ..add('apiKey')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.secretKey;
    if (value != null) {
      result
        ..add('secretKey')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  ApiRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ApiRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'apiKey':
          result.apiKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'secretKey':
          result.secretKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$ApiRecord extends ApiRecord {
  @override
  final String? apiKey;
  @override
  final String? secretKey;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ApiRecord([void Function(ApiRecordBuilder)? updates]) =>
      (new ApiRecordBuilder()..update(updates))._build();

  _$ApiRecord._({this.apiKey, this.secretKey, this.ffRef}) : super._();

  @override
  ApiRecord rebuild(void Function(ApiRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiRecordBuilder toBuilder() => new ApiRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiRecord &&
        apiKey == other.apiKey &&
        secretKey == other.secretKey &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, apiKey.hashCode);
    _$hash = $jc(_$hash, secretKey.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApiRecord')
          ..add('apiKey', apiKey)
          ..add('secretKey', secretKey)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ApiRecordBuilder implements Builder<ApiRecord, ApiRecordBuilder> {
  _$ApiRecord? _$v;

  String? _apiKey;
  String? get apiKey => _$this._apiKey;
  set apiKey(String? apiKey) => _$this._apiKey = apiKey;

  String? _secretKey;
  String? get secretKey => _$this._secretKey;
  set secretKey(String? secretKey) => _$this._secretKey = secretKey;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ApiRecordBuilder() {
    ApiRecord._initializeBuilder(this);
  }

  ApiRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _apiKey = $v.apiKey;
      _secretKey = $v.secretKey;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApiRecord;
  }

  @override
  void update(void Function(ApiRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiRecord build() => _build();

  _$ApiRecord _build() {
    final _$result = _$v ??
        new _$ApiRecord._(apiKey: apiKey, secretKey: secretKey, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
