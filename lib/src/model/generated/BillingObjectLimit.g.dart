// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BillingObjectLimit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BillingObjectLimit _$BillingObjectLimitFromJson(Map<String, dynamic> json) {
  return BillingObjectLimit(
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
    updated: json['updated'] == null
        ? null
        : DateTime.parse(json['updated'] as String),
    articleLabel: json['articleLabel'] as String,
    limitSelf: json['limitSelf'] as int,
    limitChildren: json['limitChildren'] as int,
    articleTypeLabel: json['articleTypeLabel'] as String,
    count: json['count'] as int,
  );
}

Map<String, dynamic> _$BillingObjectLimitToJson(BillingObjectLimit instance) =>
    <String, dynamic>{
      'created': instance.created?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
      'articleLabel': instance.articleLabel,
      'limitSelf': instance.limitSelf,
      'limitChildren': instance.limitChildren,
      'articleTypeLabel': instance.articleTypeLabel,
      'count': instance.count,
    };
