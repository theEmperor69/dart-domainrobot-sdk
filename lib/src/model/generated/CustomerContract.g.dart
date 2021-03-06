// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CustomerContract.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerContract _$CustomerContractFromJson(Map<String, dynamic> json) {
  return CustomerContract(
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
    updated: json['updated'] == null
        ? null
        : DateTime.parse(json['updated'] as String),
    contract: json['contract'] == null
        ? null
        : GenericLabelEntity.fromJson(json['contract'] as Map<String, dynamic>),
    notice: json['notice'] as String,
    ticketNumber: json['ticketNumber'] as String,
  );
}

Map<String, dynamic> _$CustomerContractToJson(CustomerContract instance) =>
    <String, dynamic>{
      'created': instance.created?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
      'contract': instance.contract,
      'notice': instance.notice,
      'ticketNumber': instance.ticketNumber,
    };
