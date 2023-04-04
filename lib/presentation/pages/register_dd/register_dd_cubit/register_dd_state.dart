// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'register_dd_cubit.dart';

abstract class RegisterDdState extends Equatable {
  const RegisterDdState();

  @override
  List<Object> get props => [];
}

class RegisterDdInitial extends RegisterDdState {}

class RegisterDdIsSuccess extends RegisterDdState {
  final String message;
  RegisterDdIsSuccess(this.message);
}

class RegisterDdIsFailed extends RegisterDdState {
  final String message;
  RegisterDdIsFailed(
    this.message,
  );
}

class RegisterDdIsLoading extends RegisterDdState {}
