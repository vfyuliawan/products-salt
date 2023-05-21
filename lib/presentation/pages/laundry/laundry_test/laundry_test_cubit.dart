// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:untitled/base/result_entity.dart';

import 'package:untitled/domain/model/data/laundry_model/collection_data.dart';
import 'package:untitled/domain/repository/laundry_repository/laundry_repository.dart';

part 'laundry_test_state.dart';

class LaundryTestCubit extends Cubit<LaundryTestState> {
  LaundryRepository repository;
  LaundryTestCubit(
    this.repository,
  ) : super(LaundryTestInitial());

  Future<void> fetchData() async {
    emit(LaundryTestIsLoading());
    final response = await repository.fetchData();
    if (response is ResultSuccess) {
      emit(LaundryTestIsSuccess((response as ResultSuccess).data));
    } else {
      emit(LaundryTestIsError(message: (response as ResultError).message));
    }
  }
}
