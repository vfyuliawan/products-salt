// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:http/http.dart';

import 'package:untitled/base/result_entity.dart';
import 'package:untitled/data/repository/login_repository_impl.dart';
import 'package:untitled/data/utilities/commons.dart';
import 'package:untitled/domain/model/data/login/login_user_data.dart';
import 'package:untitled/domain/repository/login/login_repository.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginRepository repository;
  LoginBloc(
    this.repository,
  ) : super(LoginInitial()) {
    on<UserLoginEvent>((event, emit) async {
      emit(LoginIsLoading());
      final response = await repository.userLogin(event.userName, event.pass);
      if (response is ResultSuccess) {
        emit(
          LoginIsSuccess(data: (response as ResultSuccess).data),
        );
        final data = (state as LoginIsSuccess).data;
        Commons().setUid(data.token!);
      } else {
        emit(LoginIsFailed(message: (response as ResultError).message));
      }
    });
  }
}
