// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BulkRedirectDeleteRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BulkRedirectDeleteRequest _$BulkRedirectDeleteRequestFromJson(
    Map<String, dynamic> json) {
  return BulkRedirectDeleteRequest(
    objects: (json['objects'] as List)
        ?.map((e) =>
            e == null ? null : Redirect.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    query: json['query'] == null
        ? null
        : Query.fromJson(json['query'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$BulkRedirectDeleteRequestToJson(
    BulkRedirectDeleteRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('objects', instance.objects?.map((e) => e?.toJson())?.toList());
  writeNotNull('query', instance.query?.toJson());
  return val;
}