// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:untitled/base/result_entity.dart';
import 'package:untitled/domain/base/authentication_header_request.dart.dart';

import 'package:untitled/domain/model/data/home_bs_data/riwayat_data.dart';
import 'package:untitled/domain/repository/home_bs/home_bs_repository.dart';

part 'riwayat_bs_state.dart';

class RiwayatBsCubit extends Cubit<RiwayatBsState> {
  HomeBSRepository repository;
  RiwayatBsCubit(
    this.repository,
  ) : super(RiwayatBsInitial());

  Future<void> fetchRiwayat(header) async {
    emit(RiwayatBsIsLoading());
    final response = await repository
        .fetchHistory(AuthenticationHeaderRequest("accesToken"));
    if (response is ResultSuccess) {
      print("success");
      emit(RiwayatBsIsSuccess((response as ResultSuccess).data));
    } else {
      print("err");
      emit(RiwayatBsIsFailed((response as ResultError).message!));
    }
  }
}
