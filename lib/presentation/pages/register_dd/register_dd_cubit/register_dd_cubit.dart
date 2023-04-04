// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:untitled/base/result_entity.dart';
import 'package:untitled/domain/base/authentication_header_request.dart.dart';

import 'package:untitled/domain/repository/register_repository_dd/register_repository_dd.dart';

part 'register_dd_state.dart';

class RegisterDdCubit extends Cubit<RegisterDdState> {
  RegisterRepositoryDD repository;
  RegisterDdCubit(
    this.repository,
  ) : super(RegisterDdInitial());

  Future<void> submitRegister(request) async {
    final response = await repository.submitRegister(
        request, AuthenticationHeaderRequest("accesToken"));
    if (response is ResultSuccess) {
      emit(RegisterDdIsSuccess("Registrasi Berhasil"));
    } else if (response is ResultError) {
      emit(RegisterDdIsFailed("Registrasi Gagal"));
    }
  }
}
