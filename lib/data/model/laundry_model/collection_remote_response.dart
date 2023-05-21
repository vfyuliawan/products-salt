// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

import 'package:untitled/data/model/laundry_model/info_model_response.dart';
import 'package:untitled/data/model/laundry_model/item_model_response.dart';
import 'package:untitled/data/model/laundry_model/variable_model_response.dart';
import 'package:untitled/domain/model/data/laundry_model/collection_data.dart';
import 'package:untitled/domain/model/data/laundry_model/info_data.dart';

part 'collection_remote_response.g.dart';

@JsonSerializable()
class CollectionRemoteResponse implements CollectionRemoteResponseMapper {
  InfoModelResponse? info;
  // List<ItemModelResponse>? item;
  List<VariableModelResponse>? variable;
  CollectionRemoteResponse({
    this.info,
    // this.item,
    this.variable,
  });

  factory CollectionRemoteResponse.fromJson(Map<String, dynamic> json) =>
      _$CollectionRemoteResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CollectionRemoteResponseToJson(this);

  @override
  CollectionData toCollectionData() {
    return CollectionData(
      info?.toInfoData(),
      // item?.map((e) => e.toItemData()).toList() ?? List.empty(),
      variable?.map((e) => e.toVariableModel()).toList() ?? List.empty(),
    );
  }
}

abstract class CollectionRemoteResponseMapper {
  CollectionData toCollectionData();
}
