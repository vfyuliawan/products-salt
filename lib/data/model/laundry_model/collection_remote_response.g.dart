// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_remote_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CollectionRemoteResponse _$CollectionRemoteResponseFromJson(
        Map<String, dynamic> json) =>
    CollectionRemoteResponse(
      info: json['info'] == null
          ? null
          : InfoModelResponse.fromJson(json['info'] as Map<String, dynamic>),
      // item: (json['item'] as List<dynamic>?)
      //     ?.map((e) => ItemModelResponse.fromJson(e as Map<String, dynamic>))
      //     .toList(),
      variable: (json['variable'] as List<dynamic>?)
          ?.map(
              (e) => VariableModelResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CollectionRemoteResponseToJson(
        CollectionRemoteResponse instance) =>
    <String, dynamic>{
      'info': instance.info,
      // 'item': instance.item,
      'variable': instance.variable,
    };
