// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'JsonResponseDataPeriodicBilling.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JsonResponseDataPeriodicBilling _$JsonResponseDataPeriodicBillingFromJson(
    Map<String, dynamic> json) {
  return JsonResponseDataPeriodicBilling(
    stid: json['stid'] as String,
    messages: (json['messages'] as List)
        ?.map((e) =>
            e == null ? null : Message.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] == null
        ? null
        : ResponseStatus.fromJson(json['status'] as Map<String, dynamic>),
    object: json['object'] == null
        ? null
        : ResponseObject.fromJson(json['object'] as Map<String, dynamic>),
    data: (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : PeriodicBilling.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    ctid: json['ctid'] as String,
  );
}

Map<String, dynamic> _$JsonResponseDataPeriodicBillingToJson(
    JsonResponseDataPeriodicBilling instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('stid', instance.stid);
  writeNotNull(
      'messages', instance.messages?.map((e) => e?.toJson())?.toList());
  writeNotNull('status', instance.status?.toJson());
  writeNotNull('object', instance.object?.toJson());
  writeNotNull('data', instance.data?.map((e) => e?.toJson())?.toList());
  writeNotNull('ctid', instance.ctid);
  return val;
}