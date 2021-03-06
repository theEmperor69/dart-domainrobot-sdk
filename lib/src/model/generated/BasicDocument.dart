import 'package:json_annotation/json_annotation.dart';
import 'BasicUser.dart';

part 'BasicDocument.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class BasicDocument {
  /// The created date.
  DateTime created;

  /// The updated date.
  DateTime updated;

  int id;

  String comment;

  String type;

  String mimeType;

  String data;

  int size;

  String name;

  String link;

  /// The unique identifier of the document
  String uuid;

  /// The alias of the document
  String alias;

  /// The owner of the object.
  BasicUser owner;

  /// The updating user of the object.
  BasicUser updater;

  BasicDocument({
    this.created,
    this.updated,
    this.id,
    this.comment,
    this.type,
    this.mimeType,
    this.data,
    this.size,
    this.name,
    this.link,
    this.uuid,
    this.alias,
    this.owner,
    this.updater,
  });

  @override
  String toString() {
    return 'BasicDocument[created=$created, updated=$updated, id=$id, comment=$comment, type=$type, mimeType=$mimeType, data=$data, size=$size, name=$name, link=$link, uuid=$uuid, alias=$alias, owner=$owner, updater=$updater, ]';
  }

  ///
  /// Json to Location object
  ///
  factory BasicDocument.fromJson(Map<String, dynamic> json) =>
      _$BasicDocumentFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$BasicDocumentToJson(this);
}
