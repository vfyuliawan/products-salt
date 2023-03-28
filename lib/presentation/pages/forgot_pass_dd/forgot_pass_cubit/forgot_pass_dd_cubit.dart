// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:untitled/base/result_entity.dart';

import 'package:untitled/domain/repository/forgot_password_dd/forgot_password_dd.dart';

part 'forgot_pass_dd_state.dart';

class ForgotPassDdCubit extends Cubit<ForgotPassDdState> {
  ForgotPassRepositoryDD repository;
  ForgotPassDdCubit(
    this.repository,
  ) : super(ForgotPassDdInitial());

  Future<void> submitForgotPass(String email) async {
    emit(ForgotPassDdIsloading());
    final response = await repository.submitForgotPassword(email);
    if (response is ResultSuccess) {
      if (response.data == null) {
        emit(ForgotPassDdIsSuccess(""));
      }
    } else if (response is ResultError) {
      emit(ForgotPassDdIsFailed(response.message!));
    }
  }
}
