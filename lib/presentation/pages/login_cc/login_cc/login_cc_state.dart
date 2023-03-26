// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'login_cc_cubit.dart';

abstract class LoginCcState extends Equatable {
  const LoginCcState();

  @override
  List<Object> get props => [];
}

class LoginCcInitial extends LoginCcState {}

class LoginCcIsSuccess extends LoginCcState {
  UserLoginData? data;
  LoginCcIsSuccess({
    this.data,
  });
}

class LoginCcIsError extends LoginCcState {
  String? message;
  LoginCcIsError({
    this.message,
  });
}

class LoginCcIsLoading extends LoginCcState {}
