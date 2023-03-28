part of 'forgot_pass_dd_cubit.dart';

abstract class ForgotPassDdState extends Equatable {
  const ForgotPassDdState();

  @override
  List<Object> get props => [];
}

class ForgotPassDdInitial extends ForgotPassDdState {}

class ForgotPassDdIsFailed extends ForgotPassDdState {
  final String msessage;

  ForgotPassDdIsFailed(this.msessage);
}

class ForgotPassDdIsloading extends ForgotPassDdState {}

class ForgotPassDdIsSuccess extends ForgotPassDdState {
  final String message;

  ForgotPassDdIsSuccess(this.message);
}
