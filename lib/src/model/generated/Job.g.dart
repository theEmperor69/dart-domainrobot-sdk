// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Job.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Job _$JobFromJson(Map<String, dynamic> json) {
  return Job(
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
    updated: json['updated'] == null
        ? null
        : DateTime.parse(json['updated'] as String),
    owner: json['owner'] == null
        ? null
        : BasicUser.fromJson(json['owner'] as Map<String, dynamic>),
    updater: json['updater'] == null
        ? null
        : BasicUser.fromJson(json['updater'] as Map<String, dynamic>),
    status: _$enumDecodeNullable(_$JobStatusConstantsEnumMap, json['status']),
    subStatus: json['subStatus'] as String,
    execution: json['execution'] == null
        ? null
        : DateTime.parse(json['execution'] as String),
    events: (json['events'] as List)
        ?.map((e) => e == null
            ? null
            : WorkflowEvent.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    action: json['action'] as String,
    subType: json['subType'] as String,
    id: json['id'] as int,
  );
}

Map<String, dynamic> _$JobToJson(Job instance) => <String, dynamic>{
      'created': instance.created?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
      'owner': instance.owner,
      'updater': instance.updater,
      'status': _$JobStatusConstantsEnumMap[instance.status],
      'subStatus': instance.subStatus,
      'execution': instance.execution?.toIso8601String(),
      'events': instance.events,
      'action': instance.action,
      'subType': instance.subType,
      'id': instance.id,
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$JobStatusConstantsEnumMap = {
  JobStatusConstants.RUNNING: 'RUNNING',
  JobStatusConstants.SUCCESS: 'SUCCESS',
  JobStatusConstants.FAILED: 'FAILED',
  JobStatusConstants.CANCELED: 'CANCELED',
  JobStatusConstants.SUPPORT: 'SUPPORT',
  JobStatusConstants.DEFERRED: 'DEFERRED',
  JobStatusConstants.NOT_SET: 'NOT_SET',
  JobStatusConstants.WAIT: 'WAIT',
};
