// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'register_bloc.dart';

abstract class RegisterState extends Equatable {
  const RegisterState();

  @override
  List<Object> get props => [];
}

class RegisterInitial extends RegisterState {}

class RegisterIsLoading extends RegisterState {}

class RegisterIsSuccess extends RegisterState {
  UserRegisterData? data;
  RegisterIsSuccess({
    this.data,
  });
}

class RegisterIsError extends RegisterState {
  final String message;
  RegisterIsError({
    required this.message,
  });
}
