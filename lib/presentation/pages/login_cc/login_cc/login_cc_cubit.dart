// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:untitled/base/result_entity.dart';
import 'package:untitled/data/utilities/commons.dart';

import 'package:untitled/domain/model/data/login/login_user_data.dart';
import 'package:untitled/domain/model/request/login_cc/login_request_cc.dart';
import 'package:untitled/domain/repository/login_cc/login_repository_cc.dart';

part 'login_cc_state.dart';

class LoginCcCubit extends Cubit<LoginCcState> {
  final LoginRepositoryCC repository;
  LoginCcCubit(
    this.repository,
  ) : super(LoginCcInitial());

  Future<void> onSubmitLogin(String? email, String? pass) async {
    emit(LoginCcIsLoading());
    final request = LoginRequest(email!, pass!);
    print(request.toJson());
    final response = await repository.submitLogin(request);
    if (response is ResultSuccess) {
      emit(LoginCcIsSuccess(
        data: (response as ResultSuccess).data,
      ));
    } else {
      emit(LoginCcIsError(message: (response as ResultError).message));
    }
  }
}
