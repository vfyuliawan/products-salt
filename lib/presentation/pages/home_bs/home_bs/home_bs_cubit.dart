// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:untitled/base/result_entity.dart';
import 'package:untitled/domain/base/authentication_header_request.dart.dart';

import 'package:untitled/domain/model/data/home_bs_data/home_data.dart';
import 'package:untitled/domain/repository/home_bs/home_bs_repository.dart';

part 'home_bs_state.dart';

class HomeBsCubit extends Cubit<HomeBsState> {
  HomeBSRepository repository;
  HomeBsCubit(
    this.repository,
  ) : super(HomeBsInitial());

  Future<void> fetcHome() async {
    emit(HomeBsIsLoading());
    final response =
        await repository.fetchHome(AuthenticationHeaderRequest("accesToken"));
    if (response is ResultSuccess) {
      emit(HomeBsIsScuccess((response as ResultSuccess).data));
      print("berhasil");
    } else {
      emit(HomeBsIsFailed(message: (response as ResultError).message));
      print("failed");
    }
  }
}
