// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:untitled/domain/model/data/laundry_model/info_data.dart';
import 'package:untitled/domain/model/data/laundry_model/item_data.dart';
import 'package:untitled/domain/model/data/laundry_model/variable_model.dart';

class CollectionData {
  InfoData? info;
  // List<ItemData>? item;
  List<VariableModel>? variable;
  CollectionData(
    this.info,
    // this.item,
    this.variable,
  );
}
