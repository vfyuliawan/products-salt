// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_model_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemModelResponse _$ItemModelResponseFromJson(Map<String, dynamic> json) =>
    ItemModelResponse(
      name: json['name'] as String?,
      item: json['item'] as List<dynamic>?,
      id: json['id'] as String?,
      uid: json['uid'] as String?,
    );

Map<String, dynamic> _$ItemModelResponseToJson(ItemModelResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'item': instance.item,
      'id': instance.id,
      'uid': instance.uid,
    };
