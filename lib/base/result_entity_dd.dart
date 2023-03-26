// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:untitled/base/base_response_status.dart';

abstract class ResultEntityDD<D> extends Equatable {
  @override
  List<Object?> get props => [];
}

class ResultSuccessDD<D> implements ResultEntityDD<D> {
  final D? data;
  final BaseResponseStatus? status;

  ResultSuccessDD({
    this.data,
    this.status,
  });

  @override
  List<Object?> get props => [data, status];

  @override
  bool? get stringify => true;

  // D get data => _data;
}

class ResultErrorDD<D> implements ResultEntityDD<D> {
  final String? message;

  ResultErrorDD({this.message});

  @override
  List<Object?> get props => [message];

  @override
  bool? get stringify => true;
}
