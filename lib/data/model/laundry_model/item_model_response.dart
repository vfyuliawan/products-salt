// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
import 'package:untitled/domain/model/data/laundry_model/item_data.dart';
part 'item_model_response.g.dart';

@JsonSerializable()
class ItemModelResponse implements ItemModelResponseMapper {
  String? name;
  List? item;
  String? id;
  String? uid;
  ItemModelResponse({
    this.name,
    this.item,
    this.id,
    this.uid,
  });

  factory ItemModelResponse.fromJson(Map<String, dynamic> json) =>
      _$ItemModelResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ItemModelResponseToJson(this);

  @override
  ItemData toItemData() {
    return ItemData(
      id: id ?? "",
      item: item ?? [],
      name: name ?? "",
      uid: uid ?? "",
    );
  }
}

abstract class ItemModelResponseMapper {
  ItemData toItemData();
}
