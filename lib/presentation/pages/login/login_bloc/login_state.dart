// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

class LoginInitial extends LoginState {}

class LoginIsLoading extends LoginState {}

class LoginIsSuccess extends LoginState {
  final UserLoginData data;
  LoginIsSuccess({
    required this.data,
  });
}

class LoginIsFailed extends LoginState {
  String? message;
  LoginIsFailed({
    this.message,
  });
}
