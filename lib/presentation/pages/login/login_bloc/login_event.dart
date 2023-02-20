// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class UserLoginEvent extends LoginEvent {
  final String userName;
  final String pass;
  UserLoginEvent({
    required this.userName,
    required this.pass,
  });
}

class UserLogout extends LoginEvent {}
