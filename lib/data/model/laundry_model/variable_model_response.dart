// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
import 'package:untitled/domain/model/data/laundry_model/variable_model.dart';
part 'variable_model_response.g.dart';

@JsonSerializable()
class VariableModelResponse implements VariableModelResponseMapper {
  String? id;
  String? key;
  String? value;

  VariableModelResponse({
    this.id,
    this.key,
    this.value,
  });

  factory VariableModelResponse.fromJson(Map<String, dynamic> json) =>
      _$VariableModelResponseFromJson(json);

  Map<String, dynamic> toJson() => _$VariableModelResponseToJson(this);

  @override
  VariableModel toVariableModel() {
    return VariableModel(
      id: id ?? '',
      key: key ?? '',
      value: value ?? '',
    );
  }
}

abstract class VariableModelResponseMapper {
  VariableModel toVariableModel();
}
